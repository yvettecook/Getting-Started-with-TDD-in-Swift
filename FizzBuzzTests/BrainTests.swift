//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Yvette Cook on 28/12/2015.
//  Copyright © 2015 Yvette. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    
    let brain = Brain()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        XCTAssertTrue(result)
    }

    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(1)
        XCTAssertFalse(result)
    }
    
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        XCTAssertTrue(result)
    }
    
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(1)
        XCTAssertFalse(result)
    }    

    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(15)
        XCTAssertTrue(result)
    }
    
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(1)
        XCTAssertFalse(result)
    }
    
    func testIsDivisibleByZero() {
        let result = brain.isDivisibleBy(0, number: 1)
        XCTAssertFalse(result)
    }
    func testSayFizz() {
        let result = brain.check(3)
        XCTAssertEqual(result, .fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(5)
        XCTAssertEqual(result, .buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(15)
        XCTAssertEqual(result, .fizzBuzz)
    }
    
    func testSayNumber() {
        let result = brain.check(1)
        XCTAssertEqual(result, .number)
    }
}
