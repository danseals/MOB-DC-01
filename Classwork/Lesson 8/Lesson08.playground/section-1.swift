// Playground - noun: a place where people can play

import UIKit

// Protocols should be at the top as a best practice
protocol Flight {
    var wings: Bool { get set }
}

protocol Talk {
    func humanSpeak() -> String
}

class Penguin: Flight {
    var wings = true
}

class Animal {
    var legs: Int = 4
    var fur: Bool = true
    var hasClaws: Bool
    
// init is used to initialize and gather information for an instance of your class, use to require a user to enter information
    
    init(hasClaws: Bool) {
        self.hasClaws = hasClaws
        self.legs = 4
    }
    
    
    func speak() {
        println("Hello world")
    }
}

class Human: Animal, Talk {
    func humanSpeak() -> String {
        return "Hello world"
    }
}

class Dog: Animal {
    //override a variable
    override var fur: Bool {
        get {
            // return whatever the fur variable is set as
            return super.fur
            // you can also do "return true" if you want to change the variable
        }
        set {
            // override the inherited property to the new value set by the sub class
            super.fur = newValue
        }
    }
    
    //override a fucntion
    override func speak() {
        // super.method also runs the method that the class inherited from
        super.speak()
        println("Woof woof")
    }
}


var dan = Animal(hasClaws: true)
var ena = Dog(hasClaws: true)
ena.speak()

var bob = Human(hasClaws: false)
bob.humanSpeak()


// classes can inherit and reference other classes, in this example, we set skippy to be ena, when we change the number of legs skippy has, it also changes the number of legs for the instance ena, because they are the same object
var skippy = ena
ena.legs
skippy.legs = 5
ena.legs

func doesAnimalHaveClaws(animal: Animal) -> Bool {
    return animal.hasClaws
}

// Polymorphism allows you to reference a subclass of a superclass, in the example below, ena is a Dog, which is a subclass of Animal
doesAnimalHaveClaws(ena)



// Structs cannot inherit, use for geometric shapes, coordinates, etc

struct Rectangle {
    var width: Int
    var height: Int
    
    func getArea() -> Int {
        return width * height
    }
}


// Here we show how Structs cannot inherit and they create a copy of a previous struct but as a whole new instance, as opposed to the class above
let myRectangle = Rectangle(width: 50, height: 100)

var myOtherRect = myRectangle
myOtherRect.width = 70
myRectangle.width

myRectangle.getArea()











