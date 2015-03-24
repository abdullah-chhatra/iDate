//
//  NSDate+Day.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public extension NSDate {
    

    public func nextHour() -> NSDate {
        return nextUnit(.CalendarUnitHour, value: hour + 1)
    }
    
    public func previousHour() -> NSDate {
        return previousUnit(.CalendarUnitHour, value: hour + 1)
    }
    
    private func nextUnit(matchingUnit: NSCalendarUnit, value: Int) -> NSDate {
        var calendar = NSCalendar.currentCalendar()
        return calendar.nextDateAfterDate(self, matchingUnit: matchingUnit, value: value, options: .MatchNextTime)!
    }
    
    private func previousUnit(matchingUnit: NSCalendarUnit, value: Int) -> NSDate {
        var calendar = NSCalendar.currentCalendar()
        return calendar.nextDateAfterDate(self,
                                          matchingUnit: matchingUnit,
                                          value: value,
                                          options: .MatchNextTime | .SearchBackwards)!
    }
}