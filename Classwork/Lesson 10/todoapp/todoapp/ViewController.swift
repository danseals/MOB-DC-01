//
//  ViewController.swift
//  todoapp
//
//  Created by Dan Seals on 1/28/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    var toDoList = ["Buy milk", "Buy Bread", "Mow the Lawn", "Pick up Charlie", "Do the dishes."]

    
    @IBOutlet weak var itemToAdd: UITextField!
    
    @IBAction func addItemToDoList(sender: AnyObject) {
        toDoList.append(itemToAdd)
        
    }
    
    override func viewDidLoad() {
        
        toDoList.append("Vote")
        
        for i in toDoList {
            println(i)
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

