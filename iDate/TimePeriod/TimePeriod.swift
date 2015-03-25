//
//  TimePeriod.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/17/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public protocol TimePeriod {
    
    var count: UInt { get }
    
    var component: NSDateComponents { get }
    
    var negativeComponent: NSDateComponents { get }
    
    var interval: NSTimeInterval { get }
    
    init(_ count: UInt)
    
    class var INTERVAL: NSTimeInterval { get }
}

public class TimePeriodBase: TimePeriod {
    
    var _count: UInt
    
    public var component: NSDateComponents {
        assertionFailure("Derived class must implement this")
    }

    public var negativeComponent: NSDateComponents {
        assertionFailure("Derived class must implement this")
    }
    
    public class var INTERVAL : NSTimeInterval {
        assertionFailure("Derived class must implement this")
    }
    
    public var interval : NSTimeInterval {
        assertionFailure("Derived class must implement this")
    }
    
    public var count: UInt {
        return _count
    }
    
    public required init(_ count: UInt = 1) {
        _count = count
    }
}

public class Lecture: TimePeriodBase {
    
    let lectureMinutes = 45.0
    
    public class override var INTERVAL: NSTimeInterval {
        return Minute.INTERVAL * Lecture().lectureMinutes
    }
    
    public override var interval: NSTimeInterval {
        return Lecture.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.minute = Int(Double(count) * lectureMinutes)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.minute = -Int(Double(count) * lectureMinutes)
        return component
    }
}

var v = NSDate.now() + Lecture()

public func + <T: TimePeriod> (date: NSDate, period: T) -> NSDate {
    var calendar = NSCalendar.currentCalendar()
    return calendar.dateByAddingComponents(period.component, toDate: date, options: nil)!
}

public func - <T: TimePeriod> (date: NSDate, period: T) -> NSDate {
    var calendar = NSCalendar.currentCalendar()
    return calendar.dateByAddingComponents(period.negativeComponent, toDate: date, options: nil)!
}

public func + (date: NSDate, ti: NSTimeInterval) -> NSDate {
    return date.dateByAddingTimeInterval(ti)
}

public func - (date: NSDate, ti: NSTimeInterval) -> NSDate {
    return date.dateByAddingTimeInterval(-ti)
}

public func + (date: NSDate, components: NSDateComponents) -> NSDate? {
    var calendar = NSCalendar.currentCalendar()
    return calendar.dateByAddingComponents(components, toDate: date, options: nil)
}

public func - (date1: NSDate, date2: NSDate) -> NSDateComponents {
    var calendar = NSCalendar.currentCalendar()
    var unitFlags : NSCalendarUnit = .CalendarUnitEra | .CalendarUnitYear | .CalendarUnitMonth |
                    .CalendarUnitDay | .CalendarUnitHour | .CalendarUnitMinute | .CalendarUnitSecond
    return calendar.components(unitFlags, fromDate: date1, toDate: date2, options: nil)
}

public func - (date1: NSDate, date2: NSDate) -> NSTimeInterval {
    return date1.timeIntervalSinceDate(date2)
}
