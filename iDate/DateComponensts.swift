//
//  DateComponensts.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/17/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

//public class Minute {
//    
//    var _count: UInt
//    
//    public var component: NSDateComponents {
//        var component = NSDateComponents()
//        component.minute = Int(_count)
//        return component
//    }
//    
//    public class var interval : NSTimeInterval {
//        return 60.0
//    }
//    
//    public var count: UInt {
//        return _count
//    }
//    
//    public init(_ count: UInt = 1) {
//        _count = count
//    }
//}
//
//func + (date: NSDate, minute: Minute) -> NSDate {
//    var calender = NSCalendar.currentCalendar()
//    return calender.dateByAddingUnit(NSCalendarUnit.CalendarUnitMinute, value: Int(minute.count), toDate: date, options: nil)!
//}