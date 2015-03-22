//
//  NSDate.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/17/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public extension NSDate {
    
    public class func now() -> NSDate {
        return NSDate()
    }
    
    
    public func beginingOfDay() -> NSDate {
        return normalizeWithComponents(.YearCalendarUnit | .MonthCalendarUnit | .DayCalendarUnit)
    }
    
    public func endOfDay() -> NSDate {
        return (beginingOfDay() + Day()).dateByAddingTimeInterval(-1)
    }
    
    private func normalizeWithComponents(unitFlags: NSCalendarUnit) -> NSDate {
        var calendar = NSCalendar.currentCalendar()
        var comps = calendar.components(unitFlags, fromDate: self)
        return calendar.dateFromComponents(comps)!
    }
}

public extension NSDate {
    
    public class func today() -> NSDate {
        return NSDate.now().normalizedAtMidnight()
    }
    
    public class func dayBeforeYesterday() -> NSDate {
        return NSDate.today() - Day(2)
    }
    
    public class func yesterday() -> NSDate {
        return NSDate.today() - Day()
    }
    
    public class func tomorrow() -> NSDate {
        return NSDate.today() + Day()
    }

    public class func dayAfterTomorrow() -> NSDate {
        return NSDate.today() + Day(2)
    }

    public func normalizedAtMidnight() -> NSDate {
        return normalizeWithComponents(.YearCalendarUnit | .MonthCalendarUnit | .DayCalendarUnit)
    }
}