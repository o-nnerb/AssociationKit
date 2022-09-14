//
//  RetainNode.swift
//
//
//  Created by onnerb on 14/09/22.
//

import Foundation

class RetainNode {

    let key: AnyHashable

    private var object: Any
    private let _next: Node?

    init(
        _ key: AnyHashable,
        value: Any,
        next: Node?
    ) {
        self.key = key
        self.object = value
        self._next = next
    }
}

// MARK: - Node
extension RetainNode: Node {

    var value: Any {
        get { object }
        set { object = newValue }
    }

    func next() -> Node? {
        _next
    }
}
