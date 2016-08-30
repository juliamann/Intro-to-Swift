struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        self.location = Location(latitude: latitude, longitude: longitude)
    }
}

let someBusiness = Business(name: "Julia's Store", latitude: 10.13, longitude: 6.45)