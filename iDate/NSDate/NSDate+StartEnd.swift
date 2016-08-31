//
//  NSDate+StartEnd.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public extension NSDate {
    
    public func startOfMinute() -> NSDate {
        return dateFromComponents([.Era, .Year, .Month, .Day, .Hour, .Minute])
    }
    
    public func endOfMinute() -> NSDate {
        return startOfMinute() + Minute() - 1.0
    }
    
    public func startOfHour() -> NSDate {
        return dateFromComponents([.Era, .Year, .Month, .Day, .Hour])
    }
    
    public func endOfHour() -> NSDate {
        return startOfHour() + Hour() - 1.0
    }
    
    public func startOfDay() -> NSDate {
        return NSCalendar.defaultCalendar.startOfDayForDate(self)
    }
    
    public func endOfDay() -> NSDate {
        return startOfDay() + Day() - 1.0
    }
    
    public func startOfWeek() -> NSDate {
        let calendar = NSCalendar.defaultCalendar
        let unitFlags : NSCalendarUnit = [.Era, .Year, .Month, .Weekday, .Day]
        let comps = calendar.components(unitFlags, fromDate: self)
        comps.day -= comps.weekday - calendar.firstWeekday
        return calendar.dateFromComponents(comps)!
    }
    
    public func endOfWeek() -> NSDate {
        return startOfWeek() + Week() - 1.0
    }
    
    public func startOfMonth() -> NSDate {
        return dateFromComponents([.Era, .Year, .Month])
    }
    
    public func endOfMonth() -> NSDate {
        return startOfMonth() + Month() - 1.0
    }
    
    public func startOfYear() -> NSDate {
        return dateFromComponents([.Era, .Year])
    }
    
    public func endOfYear() -> NSDate {
        return startOfYear() + Year() - 1.0
    }
    
    private func dateFromComponents(unitFlags: NSCalendarUnit) -> NSDate {
        let calendar = NSCalendar.defaultCalendar
        let comps = calendar.components(unitFlags, fromDate: self)
        return calendar.dateFromComponents(comps)!
    }
}