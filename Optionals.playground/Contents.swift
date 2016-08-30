// Wrong way to decontruct optionals - Force Unwrapping - never use exclamation marks!
struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func getFullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Julia", middleName: nil, lastName: "Mann").getFullName()


// Correct way to deconstruct optionals - Optional Binding - :)
let airportCodes = ["CDG": "Charles de Gaulle"]

if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("Whoops, that key does not exist!")
}

let weatherDictionary: [String: [String: String]] = ["currently": ["temperature": "22.3"], "daily": ["temperature": "22.3"], "weekly": ["temperature": "22.3"]]

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
        print(highTemperature)
}


// Using guard
struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend(dict: [String: String]) -> Friend? {
    guard let name = dict["name"], age = dict["age"] else {
        return nil
    }
    let address = dict["address"]
    return Friend(name: name, age: age, address: address)
}





// Treehouse Code Challenge

var someValue: Int? = nil

let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

if let movie = movieDictionary["Spectre"], let actors = movie["cast"] {
    leadActor = actors[0]
}


// Treehouse Code Challenge
struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    init?(dict: [String: String]) {
        guard let title = dict["title"], let author = dict["author"] else {
                return nil
        }
        
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
}

