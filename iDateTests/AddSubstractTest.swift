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
    
    let date1 = NSDate(timeIntervalSince1970: 1395478459) //Sat, 22 Mar 2014 09:54:19 GMT
    
    func testIntervalSubstraction() {
        
        let now = NSDate.now()
        var lessDate = now - Minute.INTERVAL
        
        XCTAssert(now > lessDate)
        XCTAssert(lessDate < now)
        XCTAssertEqual(now.second, lessDate.second)
        XCTAssertEqual(now.minute, lessDate.minute + 1)
        XCTAssertEqual(now.hour, lessDate.hour)
        XCTAssertEqual(now.day, lessDate.day)
        XCTAssertEqual(now.month, lessDate.month)
        XCTAssertEqual(now.year, lessDate.year)
        
        lessDate = now - Hour.INTERVAL
        
        XCTAssert(now > lessDate)
        XCTAssert(lessDate < now)
        XCTAssertEqual(now.second, lessDate.second)
        XCTAssertEqual(now.minute, lessDate.minute)
        XCTAssertEqual(now.hour, lessDate.hour + 1)
        XCTAssertEqual(now.day, lessDate.day)
        XCTAssertEqual(now.month, lessDate.month)
        XCTAssertEqual(now.year, lessDate.year)
        
        lessDate = now - Day.INTERVAL

        XCTAssert(now > lessDate)
        XCTAssert(lessDate < now)
        XCTAssertEqual(now.second, lessDate.second)
        XCTAssertEqual(now.minute, lessDate.minute)
        XCTAssertEqual(now.hour, lessDate.hour)
        XCTAssertEqual(now.day, lessDate.day + 1)
        XCTAssertEqual(now.month, lessDate.month)
        XCTAssertEqual(now.year, lessDate.year)
    }
    
    func testIntervalAddition() {
        
        let now = NSDate.now()
        var moreDate = now + Minute.INTERVAL
        
        XCTAssert(now < moreDate)
        XCTAssert(moreDate > now)
        XCTAssertEqual(now.second, moreDate.second)
        XCTAssertEqual(now.minute, moreDate.minute - 1)
        XCTAssertEqual(now.hour, moreDate.hour)
        XCTAssertEqual(now.day, moreDate.day)
        XCTAssertEqual(now.month, moreDate.month)
        XCTAssertEqual(now.year, moreDate.year)
        
        moreDate = now + Hour.INTERVAL
        
        XCTAssert(now < moreDate)
        XCTAssert(moreDate > now)
        XCTAssertEqual(now.second, moreDate.second)
        XCTAssertEqual(now.minute, moreDate.minute)
        XCTAssertEqual(now.hour, moreDate.hour - 1)
        XCTAssertEqual(now.day, moreDate.day)
        XCTAssertEqual(now.month, moreDate.month)
        XCTAssertEqual(now.year, moreDate.year)
        
        moreDate = now + Day.INTERVAL
        
        XCTAssert(now < moreDate)
        XCTAssert(moreDate > now)
        XCTAssertEqual(now.second, moreDate.second)
        XCTAssertEqual(now.minute, moreDate.minute)
        XCTAssertEqual(now.hour, moreDate.hour)
        XCTAssertEqual(now.day, moreDate.day - 1)
        XCTAssertEqual(now.month, moreDate.month)
        XCTAssertEqual(now.year, moreDate.year)
    }

    func testComponentsAddition() {
        let now = NSDate.now()
        
    }
}