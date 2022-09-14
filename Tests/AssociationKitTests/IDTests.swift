//
//  IDTests.swift
//  
//
//  Created by onnerb on 14/09/22.
//

import XCTest
@testable import AssociationKit

class IDTests: XCTestCase {

    let object = Object()

    func testEmpty() {
        XCTAssertEqual(object.id, IDKey.defaultValue)
    }

    func testAssign() {
        let id = UUID()
        object.id = id
        XCTAssertEqual(object.id, id)
    }

    func testMultipleReadingAndWrite() {
        for i in 0 ..< 100 {
            let id = UUID()
            object.id = id
            XCTAssertEqual(object.id, id, "\(i): - \(object.id) != \(id)")
        }
    }
}
