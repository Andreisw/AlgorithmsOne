//
//  RemoveElement.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/3/21.
//

import Foundation

class RemoveElement {
    func removeElement(remove digit: Int, list: [Int]) -> [Int] {
        var resultList: [Int] = []
        for element in list {
            if element == digit {
                continue
            } else {
                resultList.append(element)
            }
        }
        return resultList
    }
}
