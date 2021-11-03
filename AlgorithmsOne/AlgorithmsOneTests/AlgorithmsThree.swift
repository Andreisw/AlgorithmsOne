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
    var numberPosition: NumberPosition!
    override  func setUp() {
        findNumber = FindNumber()
        numberPosition = NumberPosition()
    }
    override  func tearDown() {
        findNumber = nil
    }
    func test_find_number_in_list() {
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: 5, listNumbers: [1, 2, 3, 4, 5]))
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: -1, listNumbers: [1, 2, 3, 4, 5, -1]))
        XCTAssertTrue(findNumber.findIfNumberExistInList(number: 3, listNumbers: [3] ))
        XCTAssertFalse(findNumber.findIfNumberExistInList(number: 5, listNumbers: [1, 2, 3, 4]))
        XCTAssertFalse(findNumber.findIfNumberExistInList(number: 234, listNumbers: [1, 2, 3, 4, 5]))
        XCTAssertFalse(findNumber.findIfNumberExistInList(number: 1, listNumbers: [2, 3, 4, 5]))
        XCTAssertFalse(findNumber.findIfNumberExistInList(number: 0, listNumbers: []))
    }
    func test_find_position() {
        XCTAssert(numberPosition.findNumberPosition(numberToFind: 3, numberList: [3, 2, 3]) == [0, 2])
        XCTAssert(numberPosition.findNumberPosition(numberToFind: 5, numberList: [3, 2, 3]) == [-1])
        XCTAssert(numberPosition.findNumberPosition(numberToFind: 6, numberList: [1, 2, 4, 5, 6]) == [4])
        XCTAssert(numberPosition.findNumberPosition(numberToFind: 4, numberList: [4, 4, 4]) == [0, 1, 2])
    }
}
