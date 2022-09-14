//
//  TitleTests.swift
//
//
//  Created by onnerb on 14/09/22.
//

import XCTest
@testable import AssociationKit

class TitleTests: XCTestCase {

    let object = Object()

    func testEmpty() {
        XCTAssertNil(object.title)
    }

    func testAssign() {
        let title = "Hello world"
        object.title = title
        XCTAssertEqual(object.title, title)
    }

    func testAssignNil() {
        let title = "Hello world"
        object.title = title
        object.title = nil
        XCTAssertNotEqual(object.title, title)
        XCTAssertNil(object.title)
    }
}
