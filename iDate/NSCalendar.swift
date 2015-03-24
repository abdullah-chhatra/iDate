//
//  NSCalendar.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/17/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

extension NSCalendar {
    
    func dateWithYear(year: UInt, month: UInt = 1, day: UInt = 1, hour: UInt = 0, minute: UInt = 0, second: UInt = 0) -> NSDate {
       
        var components = NSDateComponents()
        components.year     = Int(year)
        components.month    = Int(month)
        components.day      = Int(day)
        components.hour     = Int(hour)
        components.minute   = Int(minute)
        components.second   = Int(second)
        
        return dateFromComponents(components)!
    }
    
    class func dateWithYear(year: UInt, month: UInt = 1, day: UInt = 1, hour: UInt = 0, minute: UInt = 0, second: UInt = 0) -> NSDate {
        return NSCalendar.currentCalendar()
                .dateWithYear(year, month: month, day: day, hour: hour, minute: minute, second: second)
    }
}