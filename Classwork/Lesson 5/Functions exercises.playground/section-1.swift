// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func helloWorld() {
    for index in 1...10 {
        println("Hello world!")
    }
}

helloWorld()

// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func lineLoop() {
    for index in 1...20 {
        println("Hit this line \(index) times!")
    }
}

lineLoop()


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func helloString(#input: String) {
    println("Hello \(input)")
}

helloString(input: "my friend")


// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func stringOptional(#input: String?) {
    if input == nil {
        println("Hello world!")
    } else {
        println("Hello \(input)")

    }
}

stringOptional(input: nil)
stringOptional(input: "my friend!")


// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

func fib(#n: Int) -> Int {
    var fibNum = n, current = 0, next = 1, result = 0
    for index in 0..<fibNum {
        //current val is 3
        //temp value becomes 3
        let tempVar = current
        //current value becomes next(5)
        current = next
        //next value becomes old current (temporary) + new current (old next)
        next = tempVar + current
        result = tempVar
    }
    return resu
}

fib(n: 9)


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
