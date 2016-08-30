/*
    Airport Code    Airport Name
    (Key)           (Value)
    
    LGA             La Guardia
    LHR             Heathrow
    CDG             Charles De Gaulle
    HKG             Hong Kong International
    DXB             Dubai International
 
 */

var airportCodes: [String: String] = [
    "LGA": "La Guardia",
    "LHR": "Heathrow",
    "CDG": "Charles De Gaulle",
    "HKG": "Hong Kong International",
    "DXB": "Dubai International"
]

// Read from a Dictionary

airportCodes["LGA"]

// Inserting Key Value Pairs

airportCodes["SYD"] = "Sydney Airport"

airportCodes["LGA"] = "La Guardia International Airport"

airportCodes.updateValue("Dublin Airport", forKey: "DUB")

// Removing Key Value Pairs

airportCodes["DXB"] = nil

airportCodes.removeValueForKey("DUB")

airportCodes

// Dealing with non-existant data

let airportName = airportCodes["LGA"]
airportName.dynamicType

let orlandoAirport = airportCodes["MCO"]

var iceCream: [String: String] = [
    "CC": "Chocolate Chip",
    "AP": "Apple Pie",
    "PB": "Peanut Butter"
]

iceCream.updateValue("Pistachio", forKey: "PI")

let applePie = iceCream["AP"]

iceCream.updateValue("Chocolate Chip Cookie Dough", forKey: "CC")


