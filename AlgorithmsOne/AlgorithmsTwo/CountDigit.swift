//
//  CountDigit.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/29/21.
//

import Foundation

enum CountDigit: Error {
    case numberLessThanZero
}

class CountGivenDigit {
    func countDigit(digit: Int, number: Int) throws -> Int {
        var temporalNumber = number
        var count = 0
        if number < 0 { throw CountDigit.numberLessThanZero }
        while  temporalNumber > 0 {
            if temporalNumber % 10 == digit {
                count += 1
            }
            temporalNumber /= 10
        }
        return count
    }
}
