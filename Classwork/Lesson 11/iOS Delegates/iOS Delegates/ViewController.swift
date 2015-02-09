//
//  ViewController.swift
//  iOS Delegates
//
//  Created by Dan Seals on 2/2/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var stuffTextField: UITextField!
    
    @IBOutlet weak var campusesTable: UITableView!
    var gaCampuses: [String] = []
    
    //Make sure to drag the Table View to the Table View Controller in the storyboard

    override func viewDidLoad() {
        super.viewDidLoad()
        // -- Add delegate for text field:
        //1. add UITextFieldDelegate protocol
        //2. connect text field outlet
        //3. Tie textfield.delegate = self
        //4. Add the text field method
        
        if gaCampuses.isEmpty {
            println("Your table view is empty")
            campusesTable.hidden = true
        }
        stuffTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        println("Return key pressed!")
        textField.resignFirstResponder()
        return true
    }
    
    // functions are not inheriting, so we must remove the "overrride" from functions
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.gaCampuses.count
    
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        
        // Add code to populate cells
        cell.textLabel?.text = self.gaCampuses[indexPath.row]
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

