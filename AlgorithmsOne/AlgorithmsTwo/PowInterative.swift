//
//  PowInterrative.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/29/21.
//

import Foundation

enum PowError: Error {
    case powLessZero
}

class PowIterative {
    func powNumber(number: Int, pow: Int) throws -> Int {
        var result = 1
        if pow < 0 { throw PowError.powLessZero }
        if number == 0 {return 1}
        for _ in 0..<pow {
            result *= number
        }
        if number < 0 && pow % 2 == 0 {
            return result * -1         }
        if number < 0 && pow % 2 != 0 {
            return result * -1  * -1
        }
    return result
 }
}
