//
//  Brain.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
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
        return number % divisor == 0
    }
    
    func check(_ number: Int) -> Move {
        if isDivisibleByFifteen(number) {
            return Move.fizzBuzz
        } else if isDivisibleByThree(number) {
            return Move.fizz
        } else if isDivisibleByFive(number){
            return Move.buzz
        } else {
            return Move.number
        }
    }
    
}
