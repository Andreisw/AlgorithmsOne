//
//  ListHalfSum.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/29/21.
//

import Foundation

class ListHalfSum {
    func listHalfSum(numberList: [Int]) -> Int {
        let temporalList = numberList
        let halfTemporalListIndex = temporalList.count / 2
        var secondHalfListSum = 0
        for index in halfTemporalListIndex..<temporalList.count {
            secondHalfListSum += numberList[index]
        }
        return secondHalfListSum
    }
}
