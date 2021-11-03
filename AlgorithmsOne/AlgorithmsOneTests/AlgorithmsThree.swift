//
//  File.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/3/21.
//

import XCTest
@testable import AlgorithmsOne

class AlgorithmsThree: XCTestCase {
    var findNumber: FindNumber!
    
    override  func setUp() {
        findNumber = FindNumber()
    }
    override  func tearDown() {
        findNumber = nil
    }
    func test_find_number_in_list() {
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: 5, listNumbers: [1, 2, 3, 4, 5]))
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: -2, listNumbers: [1, 2, 3, 4, 5, -1]))
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: 3, listNumbers: [3] ))
        XCTAssertFalse(findNumber.findIfNumberExistInList(number: 5, listNumbers: [1, 2, 3, 4]))
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: 234, listNumbers: [1, 2, 3, 4, 5]))
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: 1, listNumbers: [2, 3, 4, 5]))
    }
}
