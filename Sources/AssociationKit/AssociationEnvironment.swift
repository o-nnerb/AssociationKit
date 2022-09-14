//
//  AssociationEnvironment.swift
//
//
//  Created by onnerb on 14/09/22.
//

import Foundation

@dynamicMemberLookup
public struct AssociationEnvironment {

    private let storage = AssociationStorage()

    init() {}

    public subscript<Value>(dynamicMember keyPath: WritableKeyPath<AssociationValues, Value>) -> Value {
        get { values[keyPath: keyPath] }
        nonmutating
        set {
            edit {
                $0[keyPath: keyPath] = newValue
            }
        }
    }
}

private extension AssociationEnvironment {

    var values: AssociationValues {
        .init(storage)
    }

    func edit(_ edit: (inout AssociationValues) -> Void) {
        var values = self.values
        edit(&values)
    }
}
