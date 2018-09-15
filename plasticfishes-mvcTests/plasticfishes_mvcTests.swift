//
//  plasticfishes_mvcTests.swift
//  plasticfishes-mvcTests
//
//  Created by Rodriguez Isaac on 9/14/18.
//  Copyright © 2018 RodriguezIsaac. All rights reserved.
//

import XCTest
@testable import plasticfishes_mvc

class plasticfishes_mvcTests: XCTestCase {
    
    struct DataSource {
        
        static func fishes() -> [Bool] {
            return [true]
        }
    }
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
//        let fishes = DataSource.fishes()
//        XCTAssertNotNil(fishes)
//        XCTAssertEqual(1, fishes.count, "Must have one fish in an array")
        
        let result = FishService.list_all()
        let fish = result.first!
        XCTAssertEqual(14, result.count)
        XCTAssertEqual("red-eaten", fish.id)
        XCTAssertEqual("Red eaten", fish.name)
        XCTAssertEqual("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", fish.text)
        XCTAssertEqual("http://plasticfishes.herokuapp.com/api/fishes/red-eaten", fish.apiUrlString)
        XCTAssertEqual("http://plasticfishes.herokuapp.com/fishes/red-eaten", fish.webUrlString)
        XCTAssertEqual("http://plasticfishes.herokuapp.com/red-eaten.png", fish.imageUrlString)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
