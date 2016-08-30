let x1 = 0
let y1 = 0

// Tuple
let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x
coordinate1.y

// Struct
struct Point {
    // stored properties
    let x: Int
    let y: Int

    // initializer method
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    // instance method (not function): gives array of points within the specified range
    func surroundingPoints(withRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        for xCoord in (x-range)...(x+range) {
            for yCoord in (y-range)...(y+range) {
                let coordinatePoint = Point(x: xCoord, y: yCoord)
                results.append(coordinatePoint)
            }
        }
        return results
    }
    
}

// instance of the struct
let coordinatePoint = Point(x: 2, y: 2)
// calling the
coordinatePoint.surroundingPoints()
let coordinatePoint2 = Point(x: 1, y: 1)
coordinatePoint2.surroundingPoints()


// Classes

class Enemy {
    var life: Int = 2
    var position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseHeath(factor: Int) {
        life -= factor
    }
}

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fireAtEnemy(enemy: Enemy) {
        if inRange(self.position, range: self.range, target: enemy.position) {
            while enemy.life > 0 {
                enemy.decreaseHeath(self.strength)
                print("Enemy vanquished!")
            }
        } else {
            print("Darn! The enemy is out of range!")
        }
    }
    
    func inRange(position: Point, range: Int, target: Point) -> Bool {
        let availablePositions = position.surroundingPoints(withRange: range)
        for point in availablePositions {
            if (point.x == target.x) && (point.y == target.y) {
                return true
            }
        }
        return false
    }

}

class SuperEnemy: Enemy {
    let isSuper: Bool = true
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}

class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fireAtEnemy(enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseHeath(strength)
        }
        print("Enemy vanquished!")
    }
}



let tower = Tower(x: 0, y: 0)
let enemy1 = Enemy(x: 1, y: 1)
let enemy2 = Enemy(x: 5, y: 3)

tower.fireAtEnemy(enemy1)
tower.fireAtEnemy(enemy2)

let tower2 = Tower(x: 4, y: 3)
let enemy3 = Enemy(x: 4, y: 4)

tower2.fireAtEnemy(enemy3)
tower2.fireAtEnemy(enemy1)


let laserTower = LaserTower(x: 0, y: 0)
let superEnemy = SuperEnemy(x: 20, y: 20)
superEnemy.life

laserTower.fireAtEnemy(superEnemy)














// Treehouse Code Challenge - Struct

struct User {
    let name: String
    let age: Int
}


struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)

// Treehouse Code Challenge - Struct
/*
 struct Person {
    let firstName: String
    let lastName: String
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let aPerson = Person(firstName: "Julia", lastName: "Mann")
let anotherPerson = Person(firstName: "Alex", lastName: "Badalyan")

let fullName = aPerson.getFullName()
print(fullName)
let anotherFullName = anotherPerson.getFullName()
print(anotherFullName)
*/

// Treehouse Code Challenge - Struct & Init
struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = 86.0
        self.green = 191.0
        self.blue = 131.0
        self.alpha = 1.0
        
        description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}



// Treehouse Code Challenge - Class & Init
class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
}

let someShape = Shape(numberOfSides: 0)



// Treehouse Code Challenge - Class & Init
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

let someBusiness = Business(name: "Store", latitude: 12.1, longitude: 8.2)



// Treehouse Code Challenge - Class Inheritance
class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

class Car: Vehicle {
    let numberOfSeats: Int = 4
    
    override init(withDoors doors: Int, andWheels wheels: Int) {
        super.init(withDoors: doors, andWheels: wheels)
    }
}

let someCar = Car(withDoors: 4, andWheels: 4)


// Treehouse Code Challenge - Class Inheritance and Overriding Methods
class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let user1 = Person(firstName: "Julia", lastName: "Mann")
user1.getFullName()

class Doctor: Person {
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func getFullName() -> String {
        return "Dr. \(lastName)"
    }
}

let someDoctor = Doctor(firstName: "Julia", lastName: "Mann")
someDoctor.getFullName()




