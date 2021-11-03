//
//  AlgorithmsSecond.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 10/28/21.
//

import XCTest
@testable import AlgorithmsOne

class AlgorithmsSecond: XCTestCase {
    var addOnes: AddOnesNumber!
    var divisors: Divisors!
    var countDigit: CountGivenDigit!
    var halfSum: ListHalfSum!
    var powNum: PowIterative!
    var biggestNumber: FindBiggestNumber!
    var frequencyTest: FindFrequency!
    override  func setUp() {
        addOnes = AddOnesNumber()
        divisors = Divisors()
        countDigit = CountGivenDigit()
        halfSum = ListHalfSum()
        powNum = PowIterative()
        biggestNumber = FindBiggestNumber()
        frequencyTest = FindFrequency()
    }
    override func tearDown() {
       powNum = nil
        biggestNumber = nil
    }
    func test_number_frequency() {
        XCTAssertEqual(try frequencyTest.findNumberFrequency(number: 1111), ["1": 4])
        XCTAssertEqual(try frequencyTest.findNumberFrequency(number: 1234), ["1": 1, "2": 1, "3": 1, "4": 1 ])
        XCTAssertEqual(try frequencyTest.findNumberFrequency(number: 0), ["0": 1])
        XCTAssertEqual(try frequencyTest.findNumberFrequency(number: 223334555), ["2": 2, "3": 3, "4": 1, "5": 3])
        XCTAssertEqual(try frequencyTest.findNumberFrequency(number: -22), ["-2": 2])
    }
    func test_number_divisors() {
        XCTAssert(try divisors.checkAllDivisiblCases(number: 6) == [1, 2, 3, 6])
        XCTAssert(try divisors.checkAllDivisiblCases(number: 0) == [])
        XCTAssert(try divisors.checkAllDivisiblCases(number: 77) == [1, 7, 11, 77])
    }
    func test_add_ones_number() {
        XCTAssertEqual(addOnes.addToOnesNumber(number: 125), 120)
        XCTAssertEqual(addOnes.addToOnesNumber(number: 121), 126)
        XCTAssertEqual(addOnes.addToOnesNumber(number: 129), 124)
        XCTAssertEqual(addOnes.addToOnesNumber(number: 0), 5)
        XCTAssertEqual(addOnes.addToOnesNumber(number: 9), 4)
        XCTAssertEqual(addOnes.addToOnesNumber(number: -1), 4)
        XCTAssertEqual(addOnes.addToOnesNumber(number: -3), 2)
    }
    func test_cound_digit() {
        XCTAssertEqual(try countDigit.countDigit(digit: 5, number: 0), 0 )
        XCTAssertEqual(try countDigit.countDigit(digit: 5, number: 5555), 4 )
        XCTAssertEqual(try countDigit.countDigit(digit: 5, number: 512345), 2 )
    }
    func test_list_half_sum() {
        XCTAssertEqual(halfSum.listHalfSum(numberList: [2, 3, 4]), 7)
        XCTAssertEqual(halfSum.listHalfSum(numberList: []), 0)
        XCTAssertEqual(halfSum.listHalfSum(numberList: [2, 3, 4, 5]), 9)
        XCTAssertEqual(halfSum.listHalfSum(numberList: [2, 3, 4, -5]), -1)
        XCTAssertEqual(halfSum.listHalfSum(numberList: [1]), 1)
    }
    func test_pow_number() {
        XCTAssertEqual(try powNum.powNumber(number: 2, pow: 3), 8)
        XCTAssertEqual(try powNum.powNumber(number: 0, pow: 0), 1)
        XCTAssertEqual(try powNum.powNumber(number: -2, pow: 3), -8)
        XCTAssertEqual(try powNum.powNumber(number: -3, pow: 3), -27)
        XCTAssertEqual(try powNum.powNumber(number: 5, pow: 3), 125)
    }
    func test_biggest_number() {
        XCTAssertEqual(try biggestNumber.finBiggestNumber(number: 12345), 5)
        XCTAssertEqual(try biggestNumber.finBiggestNumber(number: 004), 4)
        XCTAssertEqual(try biggestNumber.finBiggestNumber(number: 0), 0)
    }
}
