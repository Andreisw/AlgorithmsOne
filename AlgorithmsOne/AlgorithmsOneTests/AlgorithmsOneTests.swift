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
        splitList = SplitListPrimeAndComposite()
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
    func test_is_palindrome() throws {
        XCTAssertTrue(palindrome.checkIfPalindrome(number: 22), "palindrome")
        XCTAssertTrue(palindrome.checkIfPalindrome(number: 212), "palindrome")
        XCTAssertTrue(palindrome.checkIfPalindrome(number: 2112), "palindrome")
    }
//    func test_split_numbers() throws {
//      let list = splitList.splitInPrimeAndComposite(numbersList: [2,3,8,4,13,24,25])
//        XCTAssertEqual(list, ([2,3,13], [8,4,24,25]))
//    }
//    
}
