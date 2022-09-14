//
//  Node.swift
//
//
//  Created by onnerb on 14/09/22.
//

import Foundation

protocol Node: AnyObject {

    var key: AnyHashable { get }
    var value: Any { get set }

    func next() -> Node?
}
