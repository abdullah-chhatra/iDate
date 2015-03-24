//
//  NSDate+Day.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public extension NSDate {
    

    public func nextMinute() -> NSDate {
        return startOfMinute() + Minute()
    }
    
    public func previousMinute() -> NSDate {
        return startOfMinute() - Minute()
    }
    
    public func nextHour() -> NSDate {
        return startOfHour() + Hour()
    }
    
    public func previousHour() -> NSDate {
        return startOfHour() - Hour()
    }

    public func nextDay() -> NSDate {
        return startOfDay() + Day()
    }
    
    public func previousDay() -> NSDate {
        return startOfDay() - Day()
    }
    
    public func nextWeek() -> NSDate {
        return startOfWeek() + Week()
    }
    
    public func previousWeek() -> NSDate {
        return startOfWeek() - Week()
    }
    
    public func nextMonth() -> NSDate {
        return startOfMonth() + Month()
    }
    
    public func previousMonth() -> NSDate {
        return startOfMonth() - Month()
    }
    
    public func nextYear() -> NSDate {
        return startOfYear() + Year()
    }
    
    public func previousYear() -> NSDate {
        return startOfYear() - Year()
    }
}