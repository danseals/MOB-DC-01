//
//  ViewController.swift
//  Lesson7
//
//  Created by Dan Seals on 1/14/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    @IBAction func createDog(sender: AnyObject) {
        var dog = Animal()
        dog.name = "Rex"
        dog.species = "german shepard"
        myLabel.text = dog.stringRepresentation()

    }
    
    @IBAction func createCat(sender: AnyObject) {
        var cat = Animal()
        cat.name = "Speedy"
        cat.species = "cheetah"
        myLabel.text = cat.stringRepresentation()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

