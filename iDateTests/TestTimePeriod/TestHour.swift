//
//  TestHour.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import XCTest
import iDate

class TestHour : XCTestCase {
    
    func testHour() {
        XCTAssertEqual(3600.0, Hour.INTERVAL)
        XCTAssertEqual(3600.0, Hour().interval)
        
        XCTAssertEqual(7200.0, Hour(2).interval)
        XCTAssertEqual(10800.0, Hour(3).interval)
        XCTAssertEqual(18000.0, Hour(5).interval)
        
        XCTAssertEqual(72000.0, Hour(20).interval)
    }
    
    func testAddHour() {
        var now = NSDate.now()
        
        var afterOneHour = now + Hour(1)
        XCTAssertEqual(Hour.INTERVAL, afterOneHour.timeIntervalSinceDate(now))
        
        var afterThreeHours = now + Hour(3)
        XCTAssertEqual(Hour.INTERVAL * 3, afterThreeHours.timeIntervalSinceDate(now))
        
        var after13Hours = now + Hour(13)
        XCTAssertEqual(Hour.INTERVAL * 13, after13Hours.timeIntervalSinceDate(now))
        
        var after20Hours = now + Hour(13) + Hour(7)
        XCTAssertEqual(Hour.INTERVAL * 20, after20Hours.timeIntervalSinceDate(now))
    }
    
    func testSubstractHour() {
        var now = NSDate.now()
        
        var beforeOneHour = now - Hour(1)
        XCTAssertEqual(Hour.INTERVAL, now.timeIntervalSinceDate(beforeOneHour))
        
        var before4Hours = now - Hour(4)
        XCTAssertEqual(Hour.INTERVAL * 4, now.timeIntervalSinceDate(before4Hours))
        
        var before13Hours = now - Hour(13)
        XCTAssertEqual(Hour.INTERVAL * 13, now.timeIntervalSinceDate(before13Hours))
        
        var before23Hours = now - Hour(15) - Hour(8)
        XCTAssertEqual(Hour.INTERVAL * 23, now.timeIntervalSinceDate(before23Hours))
    }
}