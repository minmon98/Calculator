//
//  Maths.swift
//  Calculator
//
//  Created by Minh Mon on 7/9/18.
//  Copyright © 2018 Minh Mon. All rights reserved.
//

import Foundation

class Maths {
    static func sum(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
    
    static func subtract(number1: Int, number2: Int) -> Int {
        return number1 - number2
    }
    
    static func multiply(number1: Int, number2: Int) -> Int {
        return number1 * number2
    }
    
    static func divide(number1: Int, number2: Int) -> Float {
        return Float(number1)/Float(number2)
    }
    
    static func GCD(number1: Int, number2: Int) -> Int {
        if number1 == number2 {
            return number1
        } else if number1 > number2 {
            return GCD(number1: number1 - number2, number2: number2)
        } else {
            return GCD(number1: number1, number2: number2 - number1)
        }
    }
}
