//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    var game: Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: UIControlState())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        gameScore = game?.score
    }    
    
    func play(_ move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(.number)
        case fizzButton:
            play(.fizz)
        case buzzButton:
            play(.buzz)
        case fizzBuzzButton:
            play(.fizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
}
