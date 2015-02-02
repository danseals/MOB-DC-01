//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//
import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var numberBox: UITextField!
    
    @IBOutlet weak var numberDisplay: UILabel!
    
    @IBAction func addNumber(sender: AnyObject) {
        var x = numberDisplay.text?.toInt()
        var y = numberBox.text.toInt()! + x!
        self.numberDisplay.text = "\(y)"
        
    }

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}
