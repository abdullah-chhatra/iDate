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
    
    public class override var INTERVAL: NSTimeInterval {
        return Day.INTERVAL * 7
    }
    
    public override var interval: NSTimeInterval {
        return Week.INTERVAL * Double(count)
    }
    
    public override var component: NSDateComponents {
        var component = NSDateComponents()
        component.day = Int(count * 7)
        return component
    }
    
    public override var negativeComponent: NSDateComponents {
        var component = NSDateComponents()
        component.minute = -Int(count * 7)
        return component
    }
}