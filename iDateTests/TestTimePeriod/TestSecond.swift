//
//  TestSecond.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import XCTest
import iDate

class TestSecond : XCTestCase {
    
    func testSecond() {
        XCTAssertEqual(1.0, Second.INTERVAL)
        XCTAssertEqual(1.0, Second().interval)
        
        XCTAssertEqual(2.0, Second(2).interval)
        XCTAssertEqual(3.0, Second(3).interval)
        XCTAssertEqual(5.0, Second(5).interval)
        
        XCTAssertEqual(20.0, Second(20).interval)
    }
    
    func testAddSecond() {
        var now = NSDate.now()
        
        var afterOneSecond = now + Second(1)
        XCTAssertEqual(Second.INTERVAL, afterOneSecond.timeIntervalSinceDate(now))
        
        var afterThreeSeconds = now + Second(3)
        XCTAssertEqual(Second.INTERVAL * 3, afterThreeSeconds.timeIntervalSinceDate(now))
        
        var after13Seconds = now + Second(13)
        XCTAssertEqual(Second.INTERVAL * 13, after13Seconds.timeIntervalSinceDate(now))
        
        var after20Seconds = now + Second(13) + Second(7)
        XCTAssertEqual(Second.INTERVAL * 20, after20Seconds.timeIntervalSinceDate(now))
    }
    
    func testSubstractSecond() {
        var now = NSDate.now()
        
        var beforeOneSecond = now - Second(1)
        XCTAssertEqual(Second.INTERVAL, now.timeIntervalSinceDate(beforeOneSecond))
        
        var before4Seconds = now - Second(4)
        XCTAssertEqual(Second.INTERVAL * 4, now.timeIntervalSinceDate(before4Seconds))
        
        var before13Seconds = now - Second(13)
        XCTAssertEqual(Second.INTERVAL * 13, now.timeIntervalSinceDate(before13Seconds))
        
        var before23Seconds = now - Second(15) - Second(8)
        XCTAssertEqual(Second.INTERVAL * 23, now.timeIntervalSinceDate(before23Seconds))
    }
}