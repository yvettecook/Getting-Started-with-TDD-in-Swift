//
//  Game.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import Foundation

class Game: NSObject {
    
    var score: Int
    let brain: Brain
    
    override init() {
        score = 0
        brain = Brain()
        super.init()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
    
}
