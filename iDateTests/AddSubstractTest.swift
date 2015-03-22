//
//  AddSubstractTest.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/17/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import XCTest
import iDate

class AddSubstractTest : XCTestCase {
    
    func testMinute() {
        XCTAssertEqual(60.0, Minute.INTERVAL)
        XCTAssertEqual(60.0, Minute().interval)
        
        XCTAssertEqual(120.0, Minute(2).interval)
        XCTAssertEqual(180.0, Minute(3).interval)
        XCTAssertEqual(300.0, Minute(5).interval)
        
        XCTAssertEqual(1200.0, Minute(20).interval)
    }
    
    func testAddMinute() {
        var now = NSDate.now()
        
        var afterOneMinute = now + Minute(1)
        XCTAssertEqual(Minute.INTERVAL, afterOneMinute.timeIntervalSinceDate(now))
        
        var afterThreeMinutes = now + Minute(3)
        XCTAssertEqual(Minute.INTERVAL * 3, afterThreeMinutes.timeIntervalSinceDate(now))
        
        var after13Minutes = now + Minute(13)
        XCTAssertEqual(Minute.INTERVAL * 13, after13Minutes.timeIntervalSinceDate(now))
        
        var after20Minutes = now + Minute(13) + Minute(7)
        XCTAssertEqual(Minute.INTERVAL * 20, after20Minutes.timeIntervalSinceDate(now))
    }
    
    func testSubstractMinute() {
        var now = NSDate.now()
        
        var beforeOneMinute = now - Minute(1)
        XCTAssertEqual(Minute.INTERVAL, now.timeIntervalSinceDate(beforeOneMinute))
        
        var before4Minutes = now - Minute(4)
        XCTAssertEqual(Minute.INTERVAL * 4, now.timeIntervalSinceDate(before4Minutes))
        
        var before13Minutes = now - Minute(13)
        XCTAssertEqual(Minute.INTERVAL * 13, now.timeIntervalSinceDate(before13Minutes))
        
        var before23Minutes = now - Minute(15) - Minute(8)
        XCTAssertEqual(Minute.INTERVAL * 23, now.timeIntervalSinceDate(before23Minutes))
    }
}