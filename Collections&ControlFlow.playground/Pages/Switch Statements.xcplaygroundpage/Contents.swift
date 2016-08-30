// Switch Statements

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("Paris")
    case "HKG": print("Hong Kong")
    default: print("I don't know which city this airport is in.")
    }
}


import Foundation
var randomTemperature = Int(arc4random_uniform(150))


switch randomTemperature {
    case 0..<32: print("Forget clothes, you're basically a popsicle!")
    case 32...45: print("It's quite cold, you will need a jacket.")
    case 45..<70: print("It's a bit chilly, I recommend wearing a light sweater")
    case 70...100: print("It's quite hot... t-shirt weather.")
    default: print("My face is melting!")
}


// Treehouse Code Challenge

var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
        case "BEL", "LIE", "BGR": europeanCapitals.append(value)
        case "USA", "MEX", "BRA": otherCapitals.append(value)
        case "IND", "VNM": asianCapitals.append(value)
    default: print("I don't know where this capital is!")
    }
    
    // End code
}
print(europeanCapitals)
print(asianCapitals)
print(otherCapitals)


// Treehouse Fizz Buzz Challenge

var n = 4
    // Enter your code between the two comment markers
    if n % 3 == 0 && n % 5 == 0 {
        print("FizzBuzz")
    } else if n % 3 == 0 {
        print("Fizz")
    } else if n % 5 == 0 {
        print("Buzz")
    } else {
        print("\(n)")
    }


let months = 1...12

for month in months {
    switch month {
    case 1:
        print("January")
    }
}

