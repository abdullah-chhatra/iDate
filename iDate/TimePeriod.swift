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

public func + <T: TimePeriod> (date: NSDate, period: T) -> NSDate {
    var calendar = NSCalendar.currentCalendar()
    return calendar.dateByAddingComponents(period.component, toDate: date, options: nil)!
}

public func - <T: TimePeriod> (date: NSDate, period: T) -> NSDate {
    var calendar = NSCalendar.currentCalendar()
    return calendar.dateByAddingComponents(period.negativeComponent, toDate: date, options: nil)!
}
