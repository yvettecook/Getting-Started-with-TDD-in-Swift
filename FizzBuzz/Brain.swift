//
//  Brain.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import Foundation

final class Brain {
    
    func isDivisibleByThree(_ number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    func isDivisibleByFifteen(_ number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    func isDivisibleBy(_ divisor: Int, number: Int) -> Bool {
        guard divisor != 0 else {
            return false
        }
        return number % divisor == 0
    }
    
    func check(_ number: Int) -> Move {
        var nextMove: Move = .number
        if isDivisibleByFifteen(number) {
            nextMove = .fizzBuzz
        } else if isDivisibleByThree(number) {
            nextMove = .fizz
        } else if isDivisibleByFive(number) {
            nextMove = .buzz
        }
        return nextMove
    }
}
