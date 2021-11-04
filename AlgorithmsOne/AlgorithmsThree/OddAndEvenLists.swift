//
//  OddAndEvenLists.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/4/21.
//

import Foundation

enum  OddEven: Error {
    case foundNil
}

class OddAndEvenLists {
    // Sort numbers from lowest to biggest
    func bubbleSort(list: [Int]) -> [Int] {
        var temporalArray = list
        for _ in 0..<temporalArray.count {
            for index in 1..<temporalArray.count
            where temporalArray[index] < temporalArray[index - 1] {
                    let temporalValue = temporalArray[index - 1]
                    temporalArray[index - 1] = temporalArray[index]
                    temporalArray[index] = temporalValue
            }
        }
        return temporalArray
    }
    // Sort numbers from biggest to lowest
    func reversBubbleSort(list: [Int]) -> [Int] {
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

    func createOddAndEvenNumbersList(list: [Int]) -> [[Int]] {
        let temporalList = bubbleSort(list: list)
        var oddNumberList: [Int] = []
        var evenNumberList: [Int] = []
        var result: [[Int]] = []
        for number in temporalList {
            number % 2 == 0 ? evenNumberList.append(number) : oddNumberList.append(number)
        }
            result.append(evenNumberList)
            result.append(reversBubbleSort(list: oddNumberList))
        print(result)
        return result
    }
}
