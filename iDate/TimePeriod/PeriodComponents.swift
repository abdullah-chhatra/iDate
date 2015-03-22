//
//  Minute.swift
//  iDate
//
//  Created by Abdulmunaf Chhatra on 3/17/15.
//  Copyright (c) 2015 Abdulmunaf Chhatra. All rights reserved.
//

import Foundation

public class Second : TimePeriodBase {
    
    public class override var INTERVAL: NSTimeInterval {
        return 1.0
    }
    
    public override var interval: NSTimeInterval {
        return Second.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.second = Int(count)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.second = -Int(count)
        return component
    }
}

public class Minute : TimePeriodBase {
    
    public class override var INTERVAL: NSTimeInterval {
        return Second.INTERVAL * 60.0
    }
    
    public override var interval: NSTimeInterval {
        return Minute.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.minute = Int(count)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.minute = -Int(count)
        return component
    }
}

public class Hour : TimePeriodBase {
    
    public class override var INTERVAL: NSTimeInterval {
        return Minute.INTERVAL * 60.0
    }
    
    public override var interval: NSTimeInterval {
        return Hour.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.hour = Int(count)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.hour = -Int(count)
        return component
    }
}

public class Day : TimePeriodBase {
    
    public class override var INTERVAL: NSTimeInterval {
        return Hour.INTERVAL * 24
    }
    
    public override var interval: NSTimeInterval {
        return Day.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.day = Int(count)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.day = -Int(count)
        return component
    }
}

public class Week : TimePeriodBase {
    
    private let DAYS_IN_WEEK : UInt = 7
    
    public class override var INTERVAL: NSTimeInterval {
        return Day.INTERVAL * 7
    }
    
    public override var interval: NSTimeInterval {
        return Week.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.day = Int(count * DAYS_IN_WEEK)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.minute = -Int(count * DAYS_IN_WEEK)
        return component
    }
}

public class Month : TimePeriodBase {
    
    public class override var INTERVAL: NSTimeInterval {
        return 2629743.0 //Seconds as per www.epochconverter.com (30.40 Days per month)
    }
    
    public override var interval: NSTimeInterval {
        return Month.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.month = Int(count)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.month = -Int(count)
        return component
    }
}

public class Year : TimePeriodBase {
    
    public class override var INTERVAL: NSTimeInterval {
        return 31556926.0 //Seconds as per www.epochconverter.com (365.24 Days per year)
    }
    
    public override var interval: NSTimeInterval {
        return Month.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.year = Int(count)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.year = -Int(count)
        return component
    }
}
