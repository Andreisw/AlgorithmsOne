//
//  ViewController.swift
//  AlgorithmsOne
//
//  Created by andrei.cojocaru on 10/26/21.
//

import UIKit

class ViewController: UIViewController {
    let test = AddOnesNumber()
    let divid = Divisors()
    let digit = CountGivenDigit()
    let halfSum = ListHalfSum()
    let powIterative = PowIterative()
    let biggetsNumber = FindBiggestNumber()
    let numberFrequency = NumberFrequency()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(numberFrequency.sortArray(list: numberFrequency.countSingleDigit(number: 111122)))
}
}
