//
//  TestDay.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import XCTest
import iDate

class TestDay : XCTestCase {
    
    func testDay() {
        XCTAssertEqual(86400.0, Day.INTERVAL)
        XCTAssertEqual(86400.0, Day().interval)
        
        XCTAssertEqual(172800.0, Day(2).interval)
        XCTAssertEqual(259200.0, Day(3).interval)
        XCTAssertEqual(432000.0, Day(5).interval)
        
        XCTAssertEqual(1728000.0, Day(20).interval)
    }
    
    func testAddDay() {
        var now = NSDate.now()
        
        var afterOneDay = now + Day(1)
        XCTAssertEqual(Day.INTERVAL, afterOneDay.timeIntervalSinceDate(now))
        
        var afterThreeDays = now + Day(3)
        XCTAssertEqual(Day.INTERVAL * 3, afterThreeDays.timeIntervalSinceDate(now))
        
        var after13Days = now + Day(13)
        XCTAssertEqual(Day.INTERVAL * 13, after13Days.timeIntervalSinceDate(now))
        
        var after20Days = now + Day(13) + Day(7)
        XCTAssertEqual(Day.INTERVAL * 20, after20Days.timeIntervalSinceDate(now))
    }
    
    func testSubstractDay() {
        var now = NSDate.now()
        
        var beforeOneDay = now - Day(1)
        XCTAssertEqual(Day.INTERVAL, now.timeIntervalSinceDate(beforeOneDay))
        
        var before4Days = now - Day(4)
        XCTAssertEqual(Day.INTERVAL * 4, now.timeIntervalSinceDate(before4Days))
        
        var before13Days = now - Day(13)
        XCTAssertEqual(Day.INTERVAL * 13, now.timeIntervalSinceDate(before13Days))
        
        var before23Days = now - Day(15) - Day(8)
        XCTAssertEqual(Day.INTERVAL * 23, now.timeIntervalSinceDate(before23Days))
    }
}