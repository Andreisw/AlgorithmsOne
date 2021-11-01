//
//  AddOnesNumber.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/28/21.
//

import Foundation

class AddOnesNumber {
    func addToOnesNumber(number: Int) -> Int {
        let lastDigit = number % 10
        let sumLastDigit = lastDigit + 5
        var digitToChange = 0
        var numberToReturn = 0

        if sumLastDigit < 10 {
            digitToChange = sumLastDigit
            numberToReturn = ((number / 10) * 10) + digitToChange
        } else {
            digitToChange = sumLastDigit % 10
            numberToReturn = ((number / 10) * 10) + digitToChange
        }
        return numberToReturn
    }
}
