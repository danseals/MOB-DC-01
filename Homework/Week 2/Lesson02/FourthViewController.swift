//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var fibPlaceRequested: UITextField!
    
    @IBOutlet weak var fibNumberLabel: UILabel!
    
    @IBAction func calcuateFib(sender: AnyObject) {
        self.fibNumberLabel.text = "\(FibonacciAdder(fibPlaceRequested))"
    }
    
    class FibonacciAdder: Int -> Int {
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
    
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
}
