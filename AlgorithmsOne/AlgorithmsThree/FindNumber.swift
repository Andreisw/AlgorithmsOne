//
//  FindNumber.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 11/3/21.
//

import Foundation

class FindNumber {
    func findIfNumberExistInList(number: Int, listNumbers: [Int]) -> Bool {
        for num in listNumbers where num == number {
                return true
        }
        return false
    }
}
