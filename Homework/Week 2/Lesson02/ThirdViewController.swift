//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var numberEntered: UITextField!
    
    @IBOutlet weak var isEvenOrNot: UILabel!
    
    @IBAction func calculateEven(sender: AnyObject) {
        if numberEntered.text.toInt()! % 2 == 0 && numberEntered.text.toInt()! != 0 {
            self.isEvenOrNot.text = "is even"
        } else { self.isEvenOrNot.text = "is not even" }

    }
    
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}
