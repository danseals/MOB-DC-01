//
//  AddViewController.swift
//  table view demo
//
//  Created by Dan Seals on 1/28/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

protocol Campus {
    func addCampusToArray(campusName: String)
}

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addTextBox: UITextField!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var hiddenLabel: UILabel!
    
    var delegate: Campus?
    
    @IBAction func saveAndGoBack(sender: AnyObject) {
        self.delegate?.addCampusToArray(addTextBox.text)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    @IBAction func pressPostButton(sender: AnyObject) {
        NSNotificationCenter.defaultCenter().postNotificationName("unhideHiddenlabels", object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTextBox.delegate = self
        self.errorMessage.hidden = true
        self.hiddenLabel.hidden = true
        NSNotificationCenter.defaultCenter().addObserver(self,
                selector: "unhideCurrentLabels:",
                name: "unhideHiddenlabels",
                object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self,
                selector: "textHasChanged:",
                name: "UITextFieldTextDidChangeNotification",
                object: nil)

        // Do any additional setup after loading the view.
    }
    
    func textHasChanged(NSNotification) {
        println("Hooray, text has changed!")
    }
    
    func unhideCurrentLabels(nofication: NSNotification) {
        self.hiddenLabel.hidden = false
        println("Trigger unhideHiddenlabels Notification")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.addTextBox.text.isEmpty {
            println("Your text field is empty, enter something!")
            textField.resignFirstResponder()
            self.errorMessage.hidden = false
        } else {
            self.errorMessage.hidden = true
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
