//
//  AssociationValues.swift
//
//
//  Created by onnerb on 14/09/22.
//

import Foundation

public struct AssociationValues {

    private let storage: AssociationStorage

    init(_ storage: AssociationStorage) {
        self.storage = storage
    }
}

extension AssociationValues {

    public subscript<K: AssociationKey>(_ key: K.Type) -> K.Value {
        get { storage[ObjectIdentifier(key), .retain, K.defaultValue] }
        nonmutating
        set { storage[ObjectIdentifier(key), .retain, K.defaultValue] = newValue }
    }

    public subscript<K: WeakAssociationKey>(_ key: K.Type) -> K.Value {
        get { storage[ObjectIdentifier(key), .assign, K.defaultValue] }
        nonmutating
        set { storage[ObjectIdentifier(key), .assign, K.defaultValue] = newValue }
    }
}
