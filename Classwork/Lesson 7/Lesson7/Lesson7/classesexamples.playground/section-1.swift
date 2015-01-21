// Playground - noun: a place where people can play

import UIKit

class Human {
    // Class property
    var name: String = ""
    var legs: Int = 2
    
    // Class method
    func speak() {
        println("Hello world")
    }
}

//instantiation of a class
var tedi = Human()

tedi.name = "Tedi"
tedi.legs = 2
tedi.speak()

var view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
// background color is an object property
// UIColor purpleColor is a class method
view.backgroundColor = UIColor.purpleColor()


class Animal {
    var name: String = ""
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
    func speak() {
        println("Grrrr")
    }
    
}

// a class may inherit from another class, in the following example, the class Dog inherits from the class Animal. We can override the original class.

class Dog: Animal {
    //    var legs = 4
    var isSmart = true
    override func speak() {
        println("Woof!")
    }
}

var doggie = Dog(legs: 4)
doggie.legs 
doggie.speak()
doggie.isSmart




// you can pass the whole instance of a class to a function

//func printAnimalName(animal: Animal) {
//    println("Animal's name is \(animal.name)")
//}
//
//var doggie = Animal()
//doggie.name = "Roxy"
//printAnimalName(doggie)
