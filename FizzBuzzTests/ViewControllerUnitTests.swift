//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 26/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        viewController = setupViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func setupViewController() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        viewController.loadViewIfNeeded()
        return viewController
    }
    
    func testMove1IncrementsScore() {
        viewController.play(.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(.number)
        viewController.play(.number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(.fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(.buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(.fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(.fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
    
    func testEmptyGameScore() {
        viewController.gameScore = nil
        XCTAssertNil(viewController.gameScore)
    }
    
    func testEmptyGamePlay() {
        viewController.game = nil
        viewController.play(.fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
    func testUnknownButtonTapped() {
        viewController.buttonTapped(UIButton())
        // not sure what to Assert here
    }
    
    func testNumberButtonTapped() {
        viewController.buttonTapped(viewController.numberButton)
        // not sure what to Assert here
    }
    
    func testFizzButtonTapped() {
        viewController.buttonTapped(viewController.fizzButton)
        // not sure what to Assert here
    }
    
    func testBuzzButtonTapped() {
        viewController.buttonTapped(viewController.buzzButton)
        // not sure what to Assert here
    }
    
    func testFizzBuzzButtonTapped() {
        viewController.buttonTapped(viewController.fizzBuzzButton)
        // not sure what to Assert here
    }
}
