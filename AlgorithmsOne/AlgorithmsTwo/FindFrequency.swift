//
//  FindFrequency.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 11/2/21.
//

import Foundation

class FindFrequency {
    enum FrequencyError: Error {
        case numberLessZero
    }
    func createIndexArray(number: Int) -> [Int] {
        var indexArray = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        var temporalNumber = number
        while temporalNumber > 0 {
            let index = temporalNumber % 10
            temporalNumber /= 10
            indexArray[index] += 1
        }
        return indexArray
    }
    func findNumberFrequency(number: Int) throws -> [String: Int] {
        let indexList = createIndexArray(number: number)
        var frequencyList: [String: Int] = [:]
        if number == 0 { return ["0": 1] }
        if number < 0 { throw FrequencyError.numberLessZero}
        for element in 0..<indexList.count where number > 0  && indexList[element] > 0 {
            frequencyList["\(element)"] = indexList[element]
        }
        return frequencyList
    }
}
