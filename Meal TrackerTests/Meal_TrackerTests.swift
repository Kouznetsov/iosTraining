//
//  Meal_TrackerTests.swift
//  Meal TrackerTests
//
//  Created by Karim Harat on 13/04/2017.
//  Copyright © 2017 Karim Harat. All rights reserved.
//

import XCTest
@testable import Meal_Tracker

class Meal_TrackerTests: XCTestCase {
    
    //MARK: Meal Class Tests
    func testMealInitializationSucceeds() {
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        let highestRatingMeal = Meal.init(name: "Highest", photo: nil, rating: 5)
        
        XCTAssertNotNil(zeroRatingMeal)
        XCTAssertNotNil(highestRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 0)
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        
        XCTAssertNil(largeRatingMeal)
        XCTAssertNil(negativeRatingMeal)
        XCTAssertNil(emptyNameMeal)
    }
}
