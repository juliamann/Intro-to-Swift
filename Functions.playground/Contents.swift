// Swift Functions

// Room #1
let length = 10
let width = 12
let area = length * width


// Room #2
let secondLength = 14
let secondWidth = 8
let secondArea = secondLength * secondWidth

// Area Function
func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    return area
}

// Room #1
let room1Area = calculateArea(10, width: 12)
// room #2
let room2Area = calculateArea(14, width: 8)


func someFunction() -> Void {
    
}


// Treehouse Practice
func greeting() {
    print("Hello")
}

greeting()

// Treehouse Code Challenge
func temperatureInFahrenheit(temperature: Double) -> Double {
    let fahrenheitTemperature = ((temperature * 9) / 5) + 32
    return fahrenheitTemperature
}

let fahrenheitTemp = temperatureInFahrenheit(24.0)


// Naming Parameters
func concatenateStrings(a: String, b: String) -> String {
    return a + b
}
concatenateStrings("A", b: "B")

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Julia", and: "Alex")

// Treehouse Code Challenge
func getRemainder(value a: Int, divisor b: Int) -> Int {
    return a % b
}

let result = getRemainder(value: 10, divisor: 3)

// Default Values
func carpetCostCalculator(length length: Int, width: Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String) {
    // Gray Carpet - $1/sq ft
    // Tan Carpet - $2/sq ft
    // Deep Blue Carpet - $4/sq ft
    
    let area = calculateArea(length, width: width)
    
    var price: Int
    
    switch carpetColor {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
        default: price = 0
    }
    
    return (price, carpetColor)
}

let carpetCostResult = carpetCostCalculator(length: 12, width: 10)
carpetCostResult.price
carpetCostResult.carpetColor

carpetCostCalculator(length: 12, width: 10, carpetColor: "blue")

// Function Scope

func countDownAndUp (var a: Int) {
    var b = a
    
    while b >= 0 {
        b -= 1
        a += 1
        print("a: \(a)")
        print("b: \(b)")
    }
}

var a = 20
countDownAndUp(a)

// Treehouse Code Challenge

func getTowerCoordinates(location: String) -> (Double, Double) {
    var coordinates: (Double, Double) = (0.0, 0.0)
    switch location {
        case "Eiffel Tower": coordinates = (48.8582, 2.2945)
        case "Great Pyramid": coordinates = (29.9792, 31.1344)
        case "Sydney Opera House": coordinates = (33.8587, 151.2140)
        default: (0,0)
    }
    
    return coordinates
}


let greatPyramid = getTowerCoordinates("Great Pyramid")
greatPyramid.0
greatPyramid.1



