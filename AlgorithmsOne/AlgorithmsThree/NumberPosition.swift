//
//  FindNumberPosition.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/3/21.
//

import Foundation

class NumberPosition {
    func findNumberPosition(numberToFind: Int, numberList: [Int]) -> [Int] {
        var positionList: [Int] = []
        for number in 0..<numberList.count
        where numberList[number] == numberToFind {
            positionList.append(number)
        }
        if positionList == [] { return [-1] }
        return positionList
    }
}
