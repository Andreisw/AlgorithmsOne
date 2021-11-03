//
//  RemoveAt.swift
//  AlgorithmsOneTests
//
//  Created by andrei.cojocaru on 11/3/21.
//

import Foundation

class RemoveAt {
    func removeAt(at: Int, list: [Int]) -> [Int] {
        var resultList: [Int] = []
        
        if at < 0 { return list }
        if at > list.count - 1 { return list}
        for element in 0..<list.count {
            if list[element] == list[at] {
                continue
            } else {
                resultList.append(list[element])
            }
        }
        return resultList
    }
}
