//
//  SplitListPrimeAndComposite.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/26/21.
//

import Foundation

// 2.Returneaza doua liste. Prima trebuie sa contina numere prime si cea de a doua numere compuse

class SplitListPrimeAndComposite {
    let prime = PrimeNumber()
    
func splitInPrimeAndComposite(numbersList: [Int]) -> ([Int], [Int]) {
    var splitResult: (prime: [Int], composite: [Int]) = ([], [])
    var primeNumbers: [Int] = []
    var compositeNumbers: [Int] = []
    for number in numbersList {
        if number <= 1 {
            continue
        }
        if prime.checkIsPrimeNumber(number: number) == true {
            primeNumbers.append(number)
        } else {
            compositeNumbers.append(number)
        }
    }
    splitResult.composite = compositeNumbers
    splitResult.prime = primeNumbers
    return splitResult
}
}
