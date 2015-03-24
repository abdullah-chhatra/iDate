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

let before2WeeksAnd3days5Hours =  date - Week(2) - Day(3) - Hour(5)
```

#### Defining your own Time Period
It is also possible to define your own custom time period for date arithmetic. For example a fortnight or lecture duration of 45 minutes etc. 
