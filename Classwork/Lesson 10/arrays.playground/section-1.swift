// Playground - noun: a place where people can play

import UIKit

var myArray = [1, 4, 10, 15, 20]


// The only way to create an empty array is to be explicit in the type, the type below is defined as an Int

var secondArray: [Int] = []


// Here is an empty array set as string

var stringArray: [String] = []

myArray[2]

// When using the following, it returns an optional, because it could be nil

myArray.first
myArray.last

// Append adds to the end of the Array

secondArray.append(20)
secondArray

myArray.insert(100, atIndex: 2)

myArray.count

// Insert at a point in the array, second to last

myArray.insert(50, atIndex: myArray.count - 1)

// Check to see if Array is empty

myArray.isEmpty

stringArray.isEmpty

myArray.removeAtIndex(3)

myArray[1] = 40

for i in myArray {
    if i == 100 {
        println("BINGO")
    }
    println(i)
}

