//
//  CreateNumber.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/3/21.
//

import Foundation
enum BiggestNumber: Error {
    case lessThanZero
}

class CreateNumber {
    func bubbleSort(list: [Int]) -> [Int] {
        var temporalArray = list
        for _ in 0..<temporalArray.count {
            for index in 1..<temporalArray.count
            where temporalArray[index] > temporalArray[index - 1] {
                    let temporalValue = temporalArray[index - 1]
                    temporalArray[index - 1] = temporalArray[index]
                    temporalArray[index] = temporalValue
            }
        }
        return temporalArray
    }
    func createBiggestNumber(digits: [Int]) throws -> Int {
        var biggestNumber = 0
        let sortedDigits = bubbleSort(list: digits)
        for digit in digits where digit < 0 {throw BiggestNumber.lessThanZero  }
        for index in 0..<sortedDigits.count {
           biggestNumber = (biggestNumber * 10) + sortedDigits[index]
        }
        return biggestNumber
    }
}
