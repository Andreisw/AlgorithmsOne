//
//  AlgorithmsOneTests.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 10/26/21.
//

import XCTest
@testable import AlgorithmsOne

class AlgorithmsOneTests: XCTestCase {
    var primeNumber: PrimeNumber!
    var palindrome: Palindrome!
    var splitList: SplitListPrimeAndComposite!
    override func setUp() {
        super.setUp()
        primeNumber = PrimeNumber()
        palindrome = Palindrome()
    }
    override  func tearDown() {
        super.tearDown()
        primeNumber = nil
        palindrome = nil

    }
    func test_is_prime_number() throws {
        XCTAssertTrue(primeNumber.checkIsPrimeNumber(number: 47), "true")
        XCTAssertTrue(primeNumber.checkIsPrimeNumber(number: 13), "true")
        XCTAssertTrue(primeNumber.checkIsPrimeNumber(number: 17), "true")
        XCTAssertTrue(primeNumber.checkIsPrimeNumber(number: 3), "true")
    }
    func test_mirror_result() throws {
        XCTAssertEqual(palindrome.mirrorNumber(number: 125), 521)
        XCTAssertEqual(palindrome.mirrorNumber(number: 12), 21)
    }
    func test_mirror_recursive() throws {
        XCTAssertEqual(palindrome.mirrorNumberRecursive(number: 12), 21)
        XCTAssertEqual(palindrome.mirrorNumberRecursive(number: 1211), 1121)
        XCTAssertEqual(palindrome.mirrorNumberRecursive(number: 123456), 654321)
        XCTAssertEqual(palindrome.mirrorNumberRecursive(number: 1), 1)
    }
    func test_is_palindrome() throws {
        XCTAssertTrue(palindrome.checkIfPalindrome(number: 22), "palindrome")
        XCTAssertTrue(palindrome.checkIfPalindrome(number: 212), "palindrome")
        XCTAssertTrue(palindrome.checkIfPalindrome(number: 2112), "palindrome")
    }
//    func test_split_numbers() throws {
//      let list = splitList.splitInPrimeAndComposite(numbersList: [2,3,8,4,13,24,25])
//        let list2 = splitList.splitInPrimeAndComposite(numbersList: [1,2,3,4,5,6,7,8,9])
//        let list3 = splitList.splitInPrimeAndComposite(numbersList: [2,3,5])
//        
//        XCTAssert(list == ([2,3,13], [8,4,24,25]))
//        XCTAssert(list2 == ([2,3,5,7],[4,6,8,9]))
//        XCTAssert(list3 == ([2,3,5],[]))
//    }
}
