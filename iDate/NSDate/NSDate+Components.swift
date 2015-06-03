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
        return components(.CalendarUnitSecond).second
    }
    
    public var minute: Int {
        return components(.CalendarUnitMinute).minute
    }
    
    public var hour: Int {
        return components(.CalendarUnitHour).hour
    }

    public var day : Int {
        return components(.CalendarUnitDay).day
    }
    
    public var weekDay: Int {
        return components(NSCalendarUnit.CalendarUnitWeekday).weekday
    }
    
    public var weekDayName: String {
        return NSCalendar.defaultCalendar.standaloneWeekdaySymbols[weekDay - 1] as! String
    }
    
    public var month: Int {
        return components(.CalendarUnitMonth).month
    }

    public var monthName: String {
        return NSCalendar.defaultCalendar.standaloneMonthSymbols[month - 1] as! String
    }

    public var weekOfMonth: Int {
        return components(.CalendarUnitWeekOfMonth).weekOfMonth
    }
    
    public var quarter: Int {
        return components(.CalendarUnitQuarter).quarter
    }
    
    public var year: Int {
        return components(.CalendarUnitYear).year
    }

    public var weekOfYear: Int {
        return components(.CalendarUnitWeekOfYear).weekOfYear
    }

    public var era: Int {
        return components(.CalendarUnitEra).era
    }
    
    public func timeComponents() -> NSDateComponents {
        return components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond)
    }
    
    public func dateComponents() -> NSDateComponents {
        return components(.CalendarUnitEra | .CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay)
    }
    
    public func dateTimeComponents() -> NSDateComponents {
        return components(.CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond |
                              .CalendarUnitEra | .CalendarUnitYear | .CalendarUnitMonth | .CalendarUnitDay)
    }
    
    func components(unitFlags: NSCalendarUnit) -> NSDateComponents {
        return NSCalendar.defaultCalendar.components(unitFlags, fromDate: self)
    }
}