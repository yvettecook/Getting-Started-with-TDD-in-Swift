//
//  Game.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import Foundation

final class Game {
    
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(_ move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        var answer = (false, score)
        if result == move {
            score += 1
            answer = (true, score)
        }
        return answer
    }
    
}
