//
//  TestStarEnd.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/24/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import XCTest
import iDate

class TestStartEnd : XCTestCase {
    
    let date    = NSDate(timeIntervalSince1970: 1395478459) //Sat, 22 Mar 2014 09:54:19 GMT
    let febDate = NSDate(timeIntervalSince1970: 1393062859) //Sat, 22 Feb 2014 09:54:19 GMT
    
    func testStartMinute() {
        var sm = date.startOfMinute()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, date.day)
        XCTAssertEqual(sm.hour, date.hour)
        XCTAssertEqual(sm.minute, date.minute)
        XCTAssertEqual(sm.second, 0)
    }
    
    func testEndMinute() {
        var sm = date.endOfMinute()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, date.day)
        XCTAssertEqual(sm.hour, date.hour)
        XCTAssertEqual(sm.minute, date.minute)
        XCTAssertEqual(sm.second, 59)
    }
    
    func testStartHour() {
        var sm = date.startOfHour()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, date.day)
        XCTAssertEqual(sm.hour, date.hour)
        XCTAssertEqual(sm.minute, 0)
        XCTAssertEqual(sm.second, 0)
    }
    
    func testEndHour() {
        var sm = date.endOfHour()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, date.day)
        XCTAssertEqual(sm.hour, date.hour)
        XCTAssertEqual(sm.minute, 59)
        XCTAssertEqual(sm.second, 59)
    }
    
    func testStartDay() {
        var sm = date.startOfDay()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, date.day)
        XCTAssertEqual(sm.hour, 0)
        XCTAssertEqual(sm.minute, 0)
        XCTAssertEqual(sm.second, 0)
    }
    
    func testEndDay() {
        var sm = date.endOfDay()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, date.day)
        XCTAssertEqual(sm.hour, 23)
        XCTAssertEqual(sm.minute, 59)
        XCTAssertEqual(sm.second, 59)
    }
    
    func testStartWeek() {
        var sm = date.startOfWeek()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, 16)
        XCTAssertEqual(sm.hour, 0)
        XCTAssertEqual(sm.minute, 0)
        XCTAssertEqual(sm.second, 0)
    }
    
    func testEndWeek() {
        var sm = date.endOfWeek()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, 22)
        XCTAssertEqual(sm.hour, 23)
        XCTAssertEqual(sm.minute, 59)
        XCTAssertEqual(sm.second, 59)
    }
    
    func testStartMonth() {
        var sm = date.startOfMonth()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, 1)
        XCTAssertEqual(sm.hour, 0)
        XCTAssertEqual(sm.minute, 0)
        XCTAssertEqual(sm.second, 0)
        
        sm = febDate.startOfMonth()
        
        XCTAssertEqual(sm.year, febDate.year)
        XCTAssertEqual(sm.month, febDate.month)
        XCTAssertEqual(sm.day, 1)
        XCTAssertEqual(sm.hour, 0)
        XCTAssertEqual(sm.minute, 0)
        XCTAssertEqual(sm.second, 0)
    }
    
    func testEndMonth() {
        var sm = date.endOfMonth()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, date.month)
        XCTAssertEqual(sm.day, 31)
        XCTAssertEqual(sm.hour, 23)
        XCTAssertEqual(sm.minute, 59)
        XCTAssertEqual(sm.second, 59)
        
        sm = febDate.endOfMonth()
        
        XCTAssertEqual(sm.year, febDate.year)
        XCTAssertEqual(sm.month, febDate.month)
        XCTAssertEqual(sm.day, 28)
        XCTAssertEqual(sm.hour, 23)
        XCTAssertEqual(sm.minute, 59)
        XCTAssertEqual(sm.second, 59)
    }

    func testStartYear() {
        var sm = date.startOfYear()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, 1)
        XCTAssertEqual(sm.day, 1)
        XCTAssertEqual(sm.hour, 0)
        XCTAssertEqual(sm.minute, 0)
        XCTAssertEqual(sm.second, 0)
    }
    
    func testEndYear() {
        var sm = date.endOfYear()
        
        XCTAssertEqual(sm.year, date.year)
        XCTAssertEqual(sm.month, 12)
        XCTAssertEqual(sm.day, 31)
        XCTAssertEqual(sm.hour, 23)
        XCTAssertEqual(sm.minute, 59)
        XCTAssertEqual(sm.second, 59)
    }
    
}