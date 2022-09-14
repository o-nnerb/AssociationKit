//
//  DelegateTests.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import XCTest
@testable import AssociationKit

class DelegateTests: XCTestCase {

    let object = Object()

    func testEmpty() {
        XCTAssertNil(object.delegate)
    }

    func testAssign() {
        let manager = Manager()
        object.delegate = manager
        XCTAssertTrue(object.delegate === manager)
    }

    func testWeakNil() {
        var manager: Manager? = .init()
        object.delegate = manager
        manager = nil
        XCTAssertNil(object.delegate)
    }
}
