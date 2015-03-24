# iDate
This framework provides easy to use wrappers and category over NSDate. The key factor while designing this framework is easy and intuitive way of using NSDate. Most of the operations and method work with current NSCalendar. So please bear in mind that any operation that requires a calendar instance is using NSCalendar.currentCalendar().

The smallest unit precision is a second in most of the date arithmetic.

## Comparing dates
Use comparison operator intuitively for comparing dates:
```
let d1 = //Some date
let d2 = //Some other date

if d1 == d2 {}
if d1 != d2 {}
if d1 <= d2 {}
if d1 >= d2 {}
if d1 < d2 {}
if d1 > d2 {}
```

## Date arithmetic
### Adding and Subtracting NSTimeInterval
You can use + or - operator to add or subtract time interval respectively. The result is a new date.
```
let d1 = //Some date
let oneHour = 60.0 * 60.0
let d2 = d1 + oneHour
let d3 = d1 + 20.0
let d4 = d1 - oneHour
let d5 = d1 - 115.5
```

### Adding NSDateComponents
You can also use + add NSDateComponents. Likewise the result is a new date.
```
let d1 = //Some date
let comps = //Some date components
let d2 = d1 + comps
```
Subtracting components may be achieved by setting negative values in components.


### Subtracting NSDate
You can also subtract one NSDate from other by sing - operator. The result is NSDateComponent
```
let d1 = //Some date
let d2 = //Some other date

let diffComps = d1 - d2
```
In my view adding dates just don't make much sense.

### Adding and subtracting time periods
In this framework I have created a concept of Time Period that can be added to or subtracted from an NSDate object. 
Below are the predefined time period in this framework:
```
Second
Minute
Hour
Day
Week
Month
Year
```

You could use these time periods to do date arithmetic:

```
let date = //Some date

let afterASecond     = date + Second()
let after20Seconds   = date + Second(20)
let befor15Seconds   = date - Second(15)

let after2Hours      = date + Hour(2)
let beforeADay       = date - Day()

let after4Weeks      = date + Week(4)
let before2Years     = date - Year(2)

let before2Weeks3daysAnd5Hours =  date - Week(2) - Day(3) - Hour(5)
```
The calculations are based on current calendar of the system. 

Note on adding or subtracting months and years: Adding one month will increment month part of date by one or if month is December it will increment year by one and set month as Jan. Similarly for years.

```
let d1 = \\Feb 19 2015, 13:30:30
let d2 = \\Mar 21 2015, 13:30:30

let res1 = d1 + Month() \\Mar 19 2015, 13:30:30 (adding 28 days)
let res2 = d2 + Month() \\Apr 21 2015, 13:30:30 (adding 31 days)
```

#### Defining your own Time Period
It is also possible to define your own custom time period for date arithmetic. For example a fortnight or lecture duration of 45 minutes etc. 
```
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

let numLecturesInFirtHalf = 4
let firstLectureStarts = \\Some time
let secondLectureStarts = firstLectureStarts + Lecture()
...
let lastLectureStarts = firstLectureStarts + Lecture(numLectureInFirstHalf)
```

You could also create complex duration with multiple date components involved in it.

### Date components
Access components of date using calculated properties. These are based on current calendar of the system.

```
let date = \\Mar 21 2015, 13:30:49

let second  = date.second   \\ 49
let minute  = date.minute   \\ 30
let hour    = date.hour     \\ 13
let day     = date.day      \\ 21
let weekDay = date.weekDay  \\ 7 Sat
let month   = date.month    \\ 3
let year    = date.year     \\ 2015
let weekOfMonth = date.weekOfMonth \\ 3 - 3rd week
```

### Basic useful dates
Following are utility methods for creating some basic dates:

```
//Suppose it is right now Mar 21 2015, 13:30:49
let now         = NSDate.now()                  \\Mar 21 2015, 13:30:49
let today       = NSDate.today()                \\Mar 21 2015, 00:00:00 - Start of today
let yesterday   = NSDate.yesterday()            \\Mar 20 2015, 00:00:00 - Start of yesterday
let tomorrow    = NSDate.tomorrow()             \\Mar 22 2015, 00:00:00 - Start of tomorrow
let dby         = NSDate.dayBeforeYesterday()   \\Mar 19 2015, 00:00:00 
let dat         = NSDate.dayAfterTomorrow()     \\Mar 23 2015, 00:00:00

let thisMinute  = NSDate.thisMinute()           \\Mar 21 2015, 13:30:00 - Start of this minute
let thisHour    = NSDate.thisHour()             \\Mar 21 2015, 13:00:00 - Start of this hour
let thisWeek    = NSDate.thisWeek()             \\Mar 15 2015, 00:00:00 - Start of this week
let thisMonth   = NSDate.thisMonth()            \\Mar 1 2015, 00:00:00  - Start of this month
let thisYear    = NSDate.thisYear()             \\Jan 1 2015, 00:00:00  - Start of this year
```
