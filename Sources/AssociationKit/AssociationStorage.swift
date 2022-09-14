//
//  AssociationStorage.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import Foundation

class AssociationStorage {

    private var root: Node?

    init() {}
}

extension AssociationStorage {

    subscript<Value>(
        _ key: AnyHashable,
        _ reference: ReferenceType,
        _ defaultValue: Value
    ) -> Value {
        get { fetch(forKey: key) ?? defaultValue }
        set { update(newValue, reference: reference, forKey: key) }
    }
}

private extension AssociationStorage {

    private func search(forKey key: AnyHashable) -> Node? {
        guard let root = root else {
            return nil
        }

        return sequence(
            first: root,
            next: { $0.next() }
        ).first(where: { $0.key == key })
    }

    func fetch<Value>(forKey key: AnyHashable) -> Value? {
        search(forKey: key)?.value as? Value
    }

    func update(
        _ value: Any,
        reference: ReferenceType,
        forKey key: AnyHashable
    ) {
        if let node = search(forKey: key) {
            node.value = value
            return
        }

        switch reference {
        case .retain:
            root = RetainNode(key, value: value, next: root)
        case .assign:
            root = AssignNode(key, value: value, next: root)
        }
    }
}
