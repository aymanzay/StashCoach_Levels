//
//  RoutingTests.swift
//  AchievementsTests
//
//  Created by Ayman Zeine on 8/1/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import XCTest
import UIKit
@testable import Achievements

class RoutingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShowViewController() {
        //reference types
        let navController = UINavigationController()
        let listView = LevelsListView()
        
        let module = LevelListRouting.createlevelListModule()
        let firstChild = module.childViewControllers.first!
        
        XCTAssertTrue(type(of:module) == type(of:navController), "must return navigation view controller")

        XCTAssertTrue(type(of:firstChild) == type(of:listView), "module child must be LevelListView")
        
    }
}
