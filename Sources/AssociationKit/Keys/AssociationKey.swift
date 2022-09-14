//
//  AssociationKey.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import Foundation

public protocol AssociationKey {
    associatedtype Value

    static var defaultValue: Value { get }
}
