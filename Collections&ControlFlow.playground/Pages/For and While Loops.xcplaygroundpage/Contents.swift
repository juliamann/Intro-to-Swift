var todo: [String] = [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails",
    "Do laundry",
    "Order book online",
    "Mow lawn"
]

print(todo[0])
print(todo[1])
print(todo[2])

// For In Loop

for task in todo {
    print(task)
}

// For In Loop - Range Operators

for number in 1...10 {
    print("\(number) times 5 is equal to \(number * 5)")
}

var results: [Int] = []

for multiplier in 1...10 {
    results.append(multiplier * 6)
}

print(results)


// While Loop - the condition is checked first, then code in body is executed

var x = 0
while x <= 20 {
    print(x)
    x += 1
}


var index = 0
while index < todo.count {
    print(todo[index])
    index += 1
}

// Repeat While - the statements in the body are executed first, then the condition is evaluated 


// while loop vs repeat while loop

var counter = 1

while counter < 1 {
    print("I'm inside the while loop!")
    counter += 1
}

repeat {
    print("I'm inside the repeat loop!")
    counter += 1
} while counter < 1

// treehouse code challenge
let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter1 = 0

while counter1 < numbers.count {
    sum += numbers[counter1]
    print(sum)
    counter1 += 1
}




