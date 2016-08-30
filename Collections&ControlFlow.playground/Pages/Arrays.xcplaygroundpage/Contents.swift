// Arrays
var todo: [String] = [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails",]

todo.append("Pick up dry cleaning")

todo += ["Order book online"]

let secondTaskList = ["Mow the lawn"]

// Reading from Arrays
let firstTask = todo[0]
let thirdTask = todo[2]

todo[4] = "Brush teeth"

// Inserting Using Indexes
todo.insert("Feed Marley", atIndex: 1)

// Removing Items
todo.removeAtIndex(1)

todo.count


var arrayOfInts: [Int] = [12, 13, 1987, 11, 2, 1988]

arrayOfInts.append(28)
arrayOfInts += [27]

let value = arrayOfInts[4]
let discardedValue = arrayOfInts.removeAtIndex(5)

// Dealing with non-existant data

// let lastItem = todo[5]


