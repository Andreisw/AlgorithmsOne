//
//  PrimeNumber.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/26/21.
//

import Foundation

// 1.Verifica daca numarul este prim

class PrimeNumber {
    
func checkIsPrimeNumber(number: Int) -> Bool {
    // Daca numarul N este mai mic decat 2 atunci numarul nu este prim
    if number < 2 {
        return false
    }
    // Daca numarul N este mai mic decat 9 si are una dintre valorile(2,3,5,7) numarul este prim
    if number < 9 {
        if number  == 2 || number == 3 || number == 5 || number == 7 {
            return true
        }
    // Daca numarul N este mai mic decat 9 si este divizibil cu 2 sau 3 atunci nu este prim
        if number % 2 == 0 || number % 3 == 0 {
            return false
        }
    }
    // Daca numarul N este mai mare decat 9 si este dvizibil cu 2,3,5 si 7 atunci nu este numar prim
    if number >= 9 {
        if number % 2 == 0 || number % 3 == 0 || number % 5 == 0 || number % 7 == 0 {
            return false
        }
    }
    return true
}

}
