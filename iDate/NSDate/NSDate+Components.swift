//
//  NSDate+Components.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public extension NSDate {
        
    public var second: Int {
        return components(.Second).second
    }
    
    public var minute: Int {
        return components(.Minute).minute
    }
    
    public var hour: Int {
        return components(.Hour).hour
    }

    public var day : Int {
        return components(.Day).day
    }
    
    public var weekDay: Int {
        return components(NSCalendarUnit.Weekday).weekday
    }
    
    public var weekDayName: String {
        return NSCalendar.defaultCalendar.standaloneWeekdaySymbols[weekDay - 1] 
    }
    
    public var month: Int {
        return components(.Month).month
    }

    public var monthName: String {
        return NSCalendar.defaultCalendar.standaloneMonthSymbols[month - 1] 
    }

    public var weekOfMonth: Int {
        return components(.WeekOfMonth).weekOfMonth
    }
    
    public var quarter: Int {
        return components(.Quarter).quarter
    }
    
    public var year: Int {
        return components(.Year).year
    }

    public var weekOfYear: Int {
        return components(.WeekOfYear).weekOfYear
    }

    public var era: Int {
        return components(.Era).era
    }
    
    public func timeComponents() -> NSDateComponents {
        return components([.Hour, .Minute, .Second])
    }
    
    public func dateComponents() -> NSDateComponents {
        return components([.Era, .Year, .Month, .Day])
    }
    
    public func dateTimeComponents() -> NSDateComponents {
        return components([.Hour, .Minute, .Second, .Era, .Year, .Month, .Day])
    }
    
    func components(unitFlags: NSCalendarUnit) -> NSDateComponents {
        return NSCalendar.defaultCalendar.components(unitFlags, fromDate: self)
    }
}