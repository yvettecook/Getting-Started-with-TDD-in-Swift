//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game : Game?
    
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
            numberButton.setTitle("\(unwrappedScore)", forState: .Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case fizzBuzzButton:
            play(Move.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
}
