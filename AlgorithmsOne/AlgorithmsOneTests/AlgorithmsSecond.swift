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
        XCTAssert(frequencyTest.findNumberFrequency(number: 1111) == [1: 4])
        XCTAssert(frequencyTest.findNumberFrequency(number: 1234) == [(4, 1),(3, 1),(2, 1),(1, 1)])
        XCTAssert(frequencyTest.findNumberFrequency(number: 0) == [(0, 1)])
        XCTAssert(frequencyTest.findNumberFrequency(number: -222) == [(-2, 3)])
        XCTAssert(frequencyTest.findNumberFrequency(number: 223344555) == [(5, 3),(4, 2),(3,2),(2, 2)])
    }
    func test_number_divisors() {
        XCTAssert(divisors.numberDivisors(number: 140) == [1, 2, 5, 7, 140])
        XCTAssert(divisors.numberDivisors(number: 6) == [1, 2, 3, 6])
        XCTAssert(divisors.numberDivisors(number: 125) == [1, 5, 125])
        XCTAssert(divisors.numberDivisors(number: 0) == [])
//        XCTAssert(divisors.numberDivisors(number: 77) == [1,7,11,77])
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
