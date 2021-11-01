//
//  NumberFrequency.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 11/1/21.
//

import Foundation

class NumberFrequency {

    func countSingleDigit(number: Int) -> [(Int, Int)] {
        var temporalNumber = number
        var secondNumber = temporalNumber
        var coundAndDigitPair: (count: Int, number: Int) = ( 0, 0)
        var arraysPair: [(Int, Int)]  = []
        while temporalNumber > 0 {
            var count = 0
            while temporalNumber % 10 == secondNumber % 10 {
                count += 1
                secondNumber /= 10
            }
            coundAndDigitPair.count = count
            coundAndDigitPair.number = temporalNumber % 10
            arraysPair.append(coundAndDigitPair)
            temporalNumber /= 10
        }
        return arraysPair
    }
    func sortArray(list: [(Int, Int)]) -> [(Int, Int)] {
        var temporalArray: [(Int, Int)] = []
        for index in 1..<list.count
        where list[index - 1] != list[index] {
            temporalArray.append(list[index - 1])
        }
        return temporalArray
    }
}
