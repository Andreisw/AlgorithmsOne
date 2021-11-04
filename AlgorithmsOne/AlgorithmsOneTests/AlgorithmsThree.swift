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
    var createNumber: CreateNumber!
    var sumEvenOdd: SumEvenOdd!
    var remove: RemoveElement!
    var removeAt: RemoveAt!
    var addOdd: AddOddNumber!
    override  func setUp() {
        findNumber = FindNumber()
        numberPosition = NumberPosition()
        createNumber = CreateNumber()
        sumEvenOdd = SumEvenOdd()
        remove = RemoveElement()
        removeAt = RemoveAt()
        addOdd = AddOddNumber()
    }
    override  func tearDown() {
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
    func test_create_number() {
        XCTAssert(try createNumber.createBiggestNumber(digits: [2, 3, 4]) == 432)
        XCTAssert(try createNumber.createBiggestNumber(digits: [0]) == 0)
        XCTAssert(try createNumber.createBiggestNumber(digits: [-2, 3, 4]) == 0)
        XCTAssert(try createNumber.createBiggestNumber(digits: [1, 4, 3, 8, 9, 8]) == 988431)
    }
    func test_sum_even_odd_numbers() {
        XCTAssert(sumEvenOdd.sumForFirstEvLastOd(numberList: [2, 3, 5, 6, 7, 9]) == 11)
        XCTAssert(sumEvenOdd.sumForFirstEvLastOd(numberList: [0]) == 0)
        XCTAssert(sumEvenOdd.sumForFirstEvLastOd(numberList: [-3, 2, 4, -5, -9]) == -7)
        XCTAssert(sumEvenOdd.sumForFirstEvLastOd(numberList: [-5, 3, 9, 6, -1, 8]) == 5)
    }
    func test_remove_element() {
        XCTAssert(remove.removeElement(remove: 3, list: [2, 3, 4]) == [2, 4])
        XCTAssert(remove.removeElement(remove: 5, list: [2, 3, 4, 5, 5, 6, 5]) == [2, 3, 4, 6])
        XCTAssert(remove.removeElement(remove: 3, list: []) == [])
    }
    func test_remove_at() {
        XCTAssert(removeAt.removeAt(at: 1, list: [1, 2, 3]) == [1, 3])
        XCTAssert(removeAt.removeAt(at: 0, list: [1, 2, 3]) == [2, 3])
        XCTAssert(removeAt.removeAt(at: 5, list: [1, 2, 3]) == [1, 2, 3])
        XCTAssert(removeAt.removeAt(at: -3, list: [1, 2, 3, 4]) == [1, 2, 3, 4])
    }
    func test_add_odd_number() {
        XCTAssert(addOdd.addOneToOddNumber(numberList: [2, 3, 4, 5, 6]) == [2, 4, 4, 6, 6])
        XCTAssert(addOdd.addOneToOddNumber(numberList: [-2, -3, -5]) == [-2, -2, -4])
        XCTAssert(addOdd.addOneToOddNumber(numberList: [0]) == [1])
    }
}
