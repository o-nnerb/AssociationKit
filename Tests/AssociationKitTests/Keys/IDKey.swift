//
//  IDKey.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import Foundation
import AssociationKit

struct IDKey: AssociationKey {
    static var defaultValue: AnyHashable = UUID()
}

private extension AssociationValues {

    var id: AnyHashable {
        get { self[IDKey.self] }
        set { self[IDKey.self] = newValue }
    }
}

extension Object {

    var id: AnyHashable {
        get { environment.id }
        set { environment.id = newValue }
    }
}
