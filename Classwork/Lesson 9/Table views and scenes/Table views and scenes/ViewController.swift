//
//  ViewController.swift
//  Table views and scenes
//
//  Created by Dan Seals on 1/26/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    
    @IBOutlet weak var swipeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnRedBox()
        initiateLeftSwipeOnRedBox()
        initiateDoubleTapOnRedBox()
            }
    
    func initiateDoubleTapOnRedBox() {
        let dTap = UITapGestureRecognizer(target: self, action: "doubleTapped:")
        dTap.numberOfTapsRequired = 2
        self.swipeView.addGestureRecognizer(dTap)
    }
    
    func initiateRightSwipeOnRedBox() {
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        self.swipeView.addGestureRecognizer(swipeR)

    }
    
    func initiateLeftSwipeOnRedBox() {
        let swipeL = UISwipeGestureRecognizer(target: self, action: "swipedLeft:")
        swipeL.direction = UISwipeGestureRecognizerDirection.Left
        self.swipeView.addGestureRecognizer(swipeL)
    }
    
    func swipedRight(sender: UISwipeGestureRecognizer) {
        self.performSegueWithIdentifier("showSecondVC", sender: self)
    }
    
    func swipedLeft(sender: UISwipeGestureRecognizer) {
        self.resultsLabel.text = "You swiped Left!"
    }
    
    func doubleTapped(sender: UISwipeGestureRecognizer) {
        // Don't forget to identify the viewcontroller name, in this case "thirdVC" on the ViewConcroller
        var thirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("thirdVC") as ThirdViewController
        self.presentViewController(thirdVC, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

