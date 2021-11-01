//
//  File.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/28/21.
//

import Foundation

enum NumberError: Error {
    case negativeNumber
}

class Divisors {
    func checkIfNumberDivideBy(number: Int, divisor: Int) -> Int {
        var temporalNumber = number
        while temporalNumber % divisor == 0 && temporalNumber != 0 {
            temporalNumber /= divisor
        }
        return temporalNumber
    }
    func checkAllDivisiblCases(number: Int) -> [Int] {
        var temporalNumber = number
        var numbersArray: [Int] = [1]
        if number == 1 { return [1] }
        // Verific daca numarul este divzibil cu 2 apoi il impart la 2 cat timp restul este 0
        if temporalNumber % 2 == 0 {
            numbersArray.append(2)
            temporalNumber = checkIfNumberDivideBy(number: temporalNumber, divisor: 2)
        }
        // Verific daca numarul este divzibil cu 3 apoi il impart la 3 cat timp restul este 0
        if temporalNumber % 3 == 0 {
            numbersArray.append(3)
            temporalNumber = checkIfNumberDivideBy(number: temporalNumber, divisor: 3)
        }
        // Verific daca numarul este divzibil cu 5 apoi il impart la 5 cat timp restul este 0
        if temporalNumber % 5 == 0 {
            numbersArray.append(5)
            temporalNumber = checkIfNumberDivideBy(number: temporalNumber, divisor: 5)
        }
        // Verific daca numarul este divzibil cu 7 apoi il impart la 7 cat timp restul este 0
        if temporalNumber % 7 == 0 {
            numbersArray.append(7)
            temporalNumber = checkIfNumberDivideBy(number: temporalNumber, divisor: 7)
        }
        numbersArray.append(number)
        return numbersArray
    }
    func numberDivisors(number: Int) -> [Int] {
        if number <= 0 {
           print("error")
            return []
        }
        return checkAllDivisiblCases(number: number)
    }
}
