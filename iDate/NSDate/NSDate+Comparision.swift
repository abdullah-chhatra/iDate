//
//  NSDate+Comparision.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/22/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public func == (left: NSDate, right: NSDate) -> Bool {
    return left.isEqualToDate(right)
}

public func != (left: NSDate, right: NSDate) -> Bool {
    return !left.isEqualToDate(right)
}

public func > (left: NSDate, right: NSDate) -> Bool {
    return left.compare(right) == NSComparisonResult.OrderedDescending
}

public func < (left: NSDate, right: NSDate) -> Bool {
    return left.compare(right) == NSComparisonResult.OrderedAscending
}

public func >= (left: NSDate, right: NSDate) -> Bool {
    return left.compare(right) != NSComparisonResult.OrderedAscending
}

public func <= (left: NSDate, right: NSDate) -> Bool {
    return left.compare(right) != NSComparisonResult.OrderedDescending
}
