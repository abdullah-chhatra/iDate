//
//  TestOperators.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import iDate
import XCTest

class TestOperators : XCTestCase {

    let date1 = NSDate(timeIntervalSince1970: 1395478459)
    let date2 = NSDate(timeIntervalSince1970: 1395478459)
    let date3 = NSDate(timeIntervalSince1970: 1395478459.123)
    
    let plusSecond = NSDate(timeIntervalSince1970: 1395478460)
    let minusSecond = NSDate(timeIntervalSince1970: 1395478458)
    
    let plusMinute = NSDate(timeIntervalSince1970: 1395478519)
    let minusMinute = NSDate(timeIntervalSince1970: 1395478399)

    let plusHour = NSDate(timeIntervalSince1970: 1395482059)
    let minusHour = NSDate(timeIntervalSince1970: 1395474859)

    func testEqualsOperator() {
    
        XCTAssert(date1 == date2)
        XCTAssert(date1 != date3)
        
        XCTAssert(date1 != plusSecond)
        XCTAssert(date1 != minusSecond)
        
        XCTAssert(date1 != plusMinute)
        XCTAssert(date1 != minusMinute)
        
        XCTAssert(date1 != plusHour)
        XCTAssert(date1 != minusHour)
    }
    
    func testLessThanOrEqualsOperator() {
        
        XCTAssert(date1 <= date2)
        XCTAssert(date1 <= date3)
        
        XCTAssert(date1 <= plusSecond)
        XCTAssert(minusSecond <= date1)
        
        XCTAssert(date1 <= plusMinute)
        XCTAssert(minusMinute <= date1)
        
        XCTAssert(date1 <= plusHour)
        XCTAssert(minusHour <= date1)
    }
    
    func testGreaterThanOrEqualsOperator() {
        
        XCTAssert(date1 >= date2)
        XCTAssert(date3 >= date1)
        
        XCTAssert(plusSecond >= date1)
        XCTAssert(date1 >= minusSecond)
        
        XCTAssert(plusMinute >= date1)
        XCTAssert(date1 >= minusMinute)
        
        XCTAssert(plusHour >= date1)
        XCTAssert(date1 >= minusHour)
    }

    func testLessThanOperator() {
        
        XCTAssertFalse(date1 < date2)
        XCTAssertFalse(date2 < date1)
        
        XCTAssert(date1 < date3)
        
        XCTAssert(date1 < plusSecond)
        XCTAssert(minusSecond < date1)
        
        XCTAssert(date1 < plusMinute)
        XCTAssert(minusMinute < date1)
        
        XCTAssert(date1 < plusHour)
        XCTAssert(minusHour < date1)
    }
    
    func testGreaterThanaOperator() {
        
        XCTAssertFalse(date1 > date2)
        XCTAssertFalse(date2 > date1)
        
        XCTAssert(date3 > date1)
        
        XCTAssert(plusSecond > date1)
        XCTAssert(date1 > minusSecond)
        
        XCTAssert(plusMinute >= date1)
        XCTAssert(date1 > minusMinute)
        
        XCTAssert(plusHour > date1)
        XCTAssert(date1 > minusHour)
    }
}