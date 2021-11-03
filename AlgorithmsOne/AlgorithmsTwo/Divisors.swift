//
//  File.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/28/21.
//

import Foundation

enum DivisibleNumbers: Error {
    case lessThanOne
}

class Divisors {
    func checkAllDivisiblCases(number: Int) throws -> [Int] {
        var divisibleNumber: [Int] = []
        if number < 0 {throw DivisibleNumbers.lessThanOne}
        for num in 1...number / 2  where number % num == 0 {
            divisibleNumber.append(num)
        }
        divisibleNumber.append(number)
        return divisibleNumber
    }
}
