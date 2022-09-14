//
//  AssociationEnvironments+Init.swift
//
//
//  Created by onnerb on 14/09/22.
//

import Foundation

private var kAssociationEnvironment = 0
extension AssociationEnvironment {

    public static func environment(_ reference: AnyObject) -> AssociationEnvironment {
        if let environment = objc_getAssociatedObject(reference, &kAssociationEnvironment) as? AssociationEnvironment {
            return environment
        }

        let environment = AssociationEnvironment()

        objc_setAssociatedObject(
            reference,
            &kAssociationEnvironment,
            environment,
            .OBJC_ASSOCIATION_RETAIN
        )

        return environment
    }
}
