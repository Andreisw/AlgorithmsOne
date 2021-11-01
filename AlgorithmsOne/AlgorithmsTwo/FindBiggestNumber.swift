//
//  FindBiggestNumber.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/29/21.
//

import Foundation

enum BiggestNumber: Error {
    case numberEqualZero
    case numberLessZero
}

class FindBiggestNumber {
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
    func finBiggestNumber(number: Int) throws -> Int {
        var temporalNumber = number
        var listFromNumber: [Int] = []
        if number == 0 {throw BiggestNumber.numberEqualZero}
        if number < 0 {throw BiggestNumber.numberLessZero}
        while temporalNumber > 0 {
            listFromNumber.append(temporalNumber % 10)
            temporalNumber /= 10
        }
        let sortArray = bubbleSort(list: listFromNumber)
        return  sortArray[sortArray.endIndex - 1]
    }
}
