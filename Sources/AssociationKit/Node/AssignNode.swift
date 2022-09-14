//
//  AssignNode.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import Foundation

class AssignNode {

    let key: AnyHashable
    
    private let _next: Node?
    private weak var object: AnyObject?

    init(
        _ key: AnyHashable,
        value: Any,
        next: Node?
    ) {
        self.key = key
        self.object = value as AnyObject?
        self._next = next
    }
}

// MARK: - Node
extension AssignNode: Node {

    var value: Any {
        get { object as Any }
        set { object = newValue as AnyObject? }
    }

    func next() -> Node? {
        _next
    }
}
