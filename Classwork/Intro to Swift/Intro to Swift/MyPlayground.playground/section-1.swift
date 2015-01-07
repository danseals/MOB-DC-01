import UIKit


// Playground - noun: a place where people can play



/* 
    This is a comment block
*/

// This is an individual comment

//Strings are usually presented in double quotes
"This is a string"

// Integers are whole numbers
5
8
10000

5 + 6

//Doubles and floats
54.75
0.001

// Boolean
true
false

var myVariable = "Hello World!"

println(myVariable)

var mySecondVariable:   String = "Hello World!"

var x = 10

var y = 4

x + y
x * y
x / y
x - y

// Display the remainder using the % symbol
x % y

// Constants - Constants cannot be changed after they are declared, unlike variables

let myName = "Dan"

//Optional

var amIHere: String? = "Yes"
println(amIHere)


/******** CONTROL FLOW ***********/

var myAge = 23
if(myAge < 21){
    println("You can't get in!")
}else if myAge == 21 {
    println("Free drinks")
}else if myAge > 21 && myAge < 25 {
    println("You can drink, but you can't rent a car")
}else {
    println("You can party!")
}


for var i = 0; i < 5; ++i {
    println("Code is running \(i)")
}

for index in 1...5 {
    println(index)
}


var k = 1
while k < 10 {
    println("Counting")
    ++k
}














