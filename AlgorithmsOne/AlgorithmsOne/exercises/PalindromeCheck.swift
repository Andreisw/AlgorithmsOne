//
//  PalindromeCheck.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/26/21.
//

import Foundation

class Palindrome {

// Pow number function
func powNumber(number: Int, pow: Int) -> Int {
    if pow == 0 {
        return 1
    }
    return number * powNumber(number: number, pow: pow - 1)
}

// 3.Calculeaza oglinditul unui numar Ex: 125 -> 521
func mirrorNumber(number: Int) -> Int {
    var temporalNumber = number
    let numbersCount = String(number)
    var mirrorNumber = 0
    for _ in 0..<numbersCount.count {
        mirrorNumber = (mirrorNumber * 10) + temporalNumber % 10
        temporalNumber /= 10
    }
   return mirrorNumber
}

func mirrorNumberRecursive(number: Int) -> Int {
    let numberString = String(number)
    let lastDigitCalc = (number % 10) * powNumber(number: 10, pow: numberString.count - 1)
    if number == 0 {
        return  0
    }
    return  mirrorNumberRecursive(number: number / 10)  + lastDigitCalc
}

// 4.Veirifica daca numarul este palindrom

func checkIfPalindrome(number: Int) -> Bool {
    if number == mirrorNumberRecursive(number: number) {
        return true
    }
    return false
}

}
