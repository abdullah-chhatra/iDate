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
    
    public class func today() -> NSDate {
        return now().startOfDay()
    }
    
    public class func yesterday() -> NSDate {
        return now().startOfDay() - Day()
    }
    
    public class func tomorrow() -> NSDate {
        return now().startOfDay() + Day()
    }
    
    public class func dayBeforeYesterday() -> NSDate {
        return now().startOfDay() - Day(2)
    }
    
    public class func dayAfterTomorrow() -> NSDate {
        return now().startOfDay() + Day(2)
    }
    
    public class func thisMinute() -> NSDate {
        return now().startOfMinute()
    }
    
    public class func thisHour() -> NSDate {
        return now().startOfHour()
    }
    
    public class func thisWeek() -> NSDate {
        return now().startOfWeek()
    }
    
    public class func thisMonth() -> NSDate {
        return now().startOfMonth()
    }
    
    public class func thisYear() -> NSDate {
        return now().startOfYear()
    }
}