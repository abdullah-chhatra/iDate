//
//  TestComponents.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation
import iDate
import XCTest

class TestComponents : XCTestCase {
    
    let date = NSDate(timeIntervalSince1970: 1395482059)
    let calendar = NSCalendar.currentCalendar()
    
    func testComponents() {
        
        var comps = calendar.components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond |
                                        .CalendarUnitDay | .CalendarUnitEra | .CalendarUnitYear | .CalendarUnitMonth,
                                        fromDate: date)
        
        XCTAssertEqual(date.second, comps.second)
        XCTAssertEqual(date.minute, comps.minute)
        XCTAssertEqual(date.hour, comps.hour)
        XCTAssertEqual(date.day, comps.day)
        XCTAssertEqual(date.month, comps.month)
        XCTAssertEqual(date.year, comps.year)
    }
}