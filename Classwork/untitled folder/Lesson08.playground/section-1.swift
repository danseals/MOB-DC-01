// Playground - noun: a place where people can play

import UIKit

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

// Structs cannot inherit 






var dan = Animal(hasClaws: true)
var ena = Dog(hasClaws: true)
ena.speak()