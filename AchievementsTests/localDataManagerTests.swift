//
//  localDatManagerTests.swift
//  AchievementsTests
//
//  Created by Ayman Zeine on 8/1/18.
//  Copyright © 2018 Ayman Zeine. All rights reserved.
//

import XCTest
import UIKit
@testable import Achievements

class DataManagerTests: XCTestCase{
    
    
    var localDataManager = LevelListLocalDataManager()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDidRetrieveDataDoesNotThrow(){
        XCTAssertNoThrow(try localDataManager.getLevelList(), "should not throw, json should be extracted with no problems")
    }
    
    func testDataRetrieval(){
        XCTAssertNotNil(try localDataManager.getLevelList(), "should not be nil")
    }
    
    
    
}
