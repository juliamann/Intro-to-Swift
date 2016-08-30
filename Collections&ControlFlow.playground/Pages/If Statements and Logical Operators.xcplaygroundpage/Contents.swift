// If Statements

var temperature = 1

if temperature < 12 {
    print("It's getting cold, let's get that jacket out!")
} else if temperature < 18 {
    print("It's getting chilly. I recommend wearing a light sweater today.")
} else {
    print("It feels great outside! A t-shirt will do.")
}

// Logical Operators: And, Or, Not

// And Operator &&
if temperature > 7 && temperature < 12 {
    print("Might want to wear a scarf with that jacket!")
}

// Or Operator ||
var isRaining: Bool = true
var isSnowing: Bool = true

if isRaining || isSnowing {
    print("Get out those rain boots!")
}

// Not Operator !a
if !isRaining {
    print("Yay, the sun is out!")
}

// Chained logical operations (2+ logical operations in a row)

if (isRaining || isSnowing) && temperature < 2 {
    print("Put some gloves on!")
}


// Treehouse Code Challenge
var results: [Int] = []

for n in 1...100 {
    // Enter your code below
    if n % 2 != 0 && n % 7 == 0 {
        results.append(n)
        print(results)
    }
    // End code
}


