//
//  Object.swift
//
//
//  Created by onnerb on 14/09/22.
//

import Foundation
import AssociationKit

class Object {

    init() {}
}

extension Object {

    var environment: AssociationEnvironment {
        .environment(self)
    }
}
