//
//  ObjectDelegateKey.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import Foundation
import AssociationKit

struct ObjectDelegateKey: WeakAssociationKey {
    static var defaultValue: ObjectDelegate?
}

private extension AssociationValues {

    var objectDelegate: ObjectDelegate? {
        get { self[ObjectDelegateKey.self] }
        set { self[ObjectDelegateKey.self] = newValue }
    }
}

extension Object {

    var delegate: ObjectDelegate? {
        get { environment.objectDelegate }
        set { environment.objectDelegate = newValue }
    }
}
