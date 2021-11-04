//
//  AddOddNumber.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/4/21.
//

import Foundation

class AddOddNumber {
    func addOneToOddNumber(numberList: [Int]) -> [Int] {
        var temporalNumber = 0
        var resultList: [Int] = []
        for number in numberList {
            if number % 2 == 0 && number != 0 {
                temporalNumber = number
                resultList.append(temporalNumber)
            } else {
                temporalNumber = number + 1
                resultList.append(temporalNumber)
            }
        }
        return resultList
    }
}
