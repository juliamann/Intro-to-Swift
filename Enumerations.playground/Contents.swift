// Treehouse example of using an Array to handle data like weekdays, risky due to spelling errors
let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekdayOrWeekend(day: String) -> String {
    switch day {
        case "Saturday", "Sunday": return "Weekend"
        case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
        default: return "This isn't a valid day in the Western calendar."
    }
}

func muteNotifications(day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
    
}

let result = weekdayOrWeekend(week[3])
let isMuted = muteNotifications(result)


// Treehouse example of using enums for the above data instead of arrays
enum Day {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

enum DayType {
    case Weekday, Weekend
}

func weekdayOrWeekend(day: Day) -> DayType {
    switch day {
    case .Saturday, .Sunday: return .Weekend
    default: return .Weekday
    }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case .Weekend: return true
    case .Weekday: return false
    }
}

let dayType = weekdayOrWeekend(.Friday)
let isWeekend = muteNotifications(dayType)

// Associated Enums - Color Objects
import UIKit

enum ColorComponents {
    case RBG(red: CGFloat, green: CGFloat, blue: CGFloat, aplha: CGFloat)
    case HSB(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .RBG(let redValue, let greenValue, let blueValue, let alphaValue): return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue): return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
        }
    }
}

ColorComponents.RBG(red: 61.0, green: 120.0, blue: 198.0, aplha: 1.0).color()
















// Treehouse Code Challenge
class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}

enum Direction {
    case Left
    case Right
    case Up
    case Down
}


class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: Direction) {
        // Enter your code below
        switch direction {
        case .Up: return location.y += 1
        case .Down: return location.y -= 1
        case .Left: return location.x -= 1
        case .Right: return location.x += 1
        }
    }
}

// Treehouse Code Challenge
enum MobilePhone {
    case iPhone(String)
    case Android(String)
    case Blackberry(String)
    case WindowsPhone(String)
}

let iPhone = MobilePhone.iPhone("6S")


// Treehouse Code Challenge
import Foundation

enum UIBarButtonStyle {
    case Done
    case Plain
    case Bordered
}

class UIBarButtonItem {
    
    var title: String?
    let style: UIBarButtonStyle
    var target: AnyObject?
    var action: Selector
    
    init(title: String?, style: UIBarButtonStyle, target: AnyObject?, action: Selector) {
        self.title = title
        self.style = style
        self.target = target
        self.action = action
    }
}

enum Button {
    case Done(String)
    case Edit(String)
    
    func toUIBarButtonItem() -> UIBarButtonItem {
        switch self {
        case .Done(let done): return UIBarButtonItem(title: done, style: UIBarButtonStyle.Done, target: nil, action: nil)
        case .Edit(let edit): return UIBarButtonItem(title: edit, style: UIBarButtonStyle.Plain, target: nil, action: nil)
        }
    }
}

let done = Button.Done("Done")
let doneButton = done.toUIBarButtonItem()



