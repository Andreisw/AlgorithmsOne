//
//  SumEvenOdd.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/3/21.
//

import Foundation

class SumEvenOdd {
    func sumForFirstEvLastOd(numberList: [Int]) -> Int {
        var evenNumber: [Int] = []
        var oddNumber: [Int] = []
        if numberList == [] { return 0}
        // Add item inside even number and odd number lists
        for digit in numberList {
            digit % 2 == 0 ? evenNumber.append(digit) : oddNumber.append(digit)
        }
        // Check if evenNumber list or oddNumber list are empty
        if evenNumber == [] { return oddNumber[oddNumber.count - 1]}
        if oddNumber == [] { return evenNumber[evenNumber.count - 1]}
        return evenNumber[0] + oddNumber[oddNumber.count - 1]
    }
}
