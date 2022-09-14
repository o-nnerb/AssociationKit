//
//  TitleKey.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import Foundation
import AssociationKit

struct TitleKey: AssociationKey {
    static var defaultValue: String?
}

private extension AssociationValues {

    var title: String? {
        get { self[TitleKey.self] }
        set { self[TitleKey.self] = newValue }
    }
}

extension Object {

    var title: String? {
        get { environment.title }
        set { environment.title = newValue }
    }
}
