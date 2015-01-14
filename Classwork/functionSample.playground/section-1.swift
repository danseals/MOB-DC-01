// Playground - noun: a place where people can play

import UIKit

func hello() {
    println("Hello world")
}

hello()

func sum(firstNum: Int, secondNum: Int) -> Int {
    let newSum = firstNum + secondNum
    return newSum
}

// parameters are only temporary variables that are not accesible outside of functions

sum(10, 10)
sum(20, 10)


var x = sum(10, 20)
var y = sum(x, 15)

//fibonacci sequence

func fib(#place: Int) -> Int {
    var fibNum = place, current = 0, next = 1, result = 0
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
        return result
}

fib(place: 9)
fib(place: 23)
fib(place: 91)


// Unwrapping an optional
var num: Int? = 5
num
if let numValue = num {
    println(numValue + 5)

}


func save(name: String) -> (first: String, last: String) {
    var firstName = name
    var lastName = "Seals"
    return (firstName, lastName)
}


var myName = save("Dan")
myName.first
myName.last





