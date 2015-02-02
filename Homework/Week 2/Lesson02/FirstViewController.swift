//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var nameTextBox: UITextField!
    
    @IBOutlet weak var ageTextBox: UITextField!
    
    @IBAction func generateButton(sender: AnyObject) {
        helloWorld()
        sayHello()
        checkAge()
        checkAgeAdvanced()
    }
    
    func helloWorld() {
        self.outputLabel.text = "hello world!"
    }
    
    func sayHello() {
        self.outputLabel.text = "Hello \(nameTextBox.text), you are \(ageTextBox.text) years old!"
    }
    

    func checkAge() {
        if ageTextBox.text.toInt() >= 21 {
            self.outputLabel.text = "You can drink"
        } else if ageTextBox.text.toInt() >= 18 {
            self.outputLabel.text = "You can vote"
        } else if ageTextBox.text.toInt() >= 16 {
            self.outputLabel.text = "You can drive"
        }
    }
    
    func checkAgeAdvanced () {
        if ageTextBox.text.toInt() >= 16 && ageTextBox.text.toInt() < 18 {
            self.outputLabel.text = "You can drive"
        } else if ageTextBox.text.toInt() >= 18 && ageTextBox.text.toInt() < 21 {
            self.outputLabel.text = "You can drive and vote"
        } else if ageTextBox.text.toInt() >= 21 {
            self.outputLabel.text = "You can drive, vote and drink (but not at the same time!)"
        }
    }
    
    /* Questions:
    
1) How do I declare the UITextField "ageTextBox" to an Int so I don't have to use ".toInt()" every time, is this possible? 

2) The directions say to print the "You can drive" etc. text under the other text, but my functions replace, how do I make it append the additional function below?

    */

    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
}
