struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Julia Mann", email: "julia@juliamann.me", age: 28)

var anotherUser = someUser

someUser.fullName
anotherUser.fullName

someUser.fullName = "Jules Mann"

someUser.fullName
anotherUser.fullName

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Julia Mann", email: "julia@juliamann.me", age: 28)

var anotherPerson = somePerson

somePerson.email = "huliaarod@gmail.com"

somePerson.email
anotherPerson.email


// Treehouse Code Challenge

struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}

let firstPost = Post(title: "iOS Development", author: "Apple", tag: Tag(name: "swift"))

let postDescription = firstPost.description()


// Treehouse Code Challenge

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}


class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: String) {
        print("Do nothing! Im a machine!")
    }
}

class Robot: Machine {
    
    override func move(direction: String) {
        if direction == "Up" {
            location.y += 1
        }
        if direction == "Down" {
            location.y -= 1
        }
        if direction == "Left" {
            location.x -= 1
        }
        if direction == "Right" {
            location.x += 1
        }
        
    }
}



