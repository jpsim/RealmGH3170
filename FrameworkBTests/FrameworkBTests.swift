//
//  FrameworkBTests.swift
//  FrameworkBTests
//
//  Created by JP Simard on 2/23/16.
//  Copyright © 2016 Realm. All rights reserved.
//

import XCTest
@testable import FrameworkB

class FrameworkBTests: XCTestCase {
    func testLabelNames() {
        XCTAssertEqual(try! labelNames(), ["label1"])
    }
}
