//
//  ViewController.swift
//  programattic views
//
//  Created by Dan Seals on 2/4/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var redBox = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        redBox.backgroundColor = UIColor.redColor()
        redBox.layer.cornerRadius = 100
        redBox.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleBottomMargin
        self.view.addSubview(redBox)
        
        var redBoxLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 30))
        redBoxLabel.text = "Hello World!"
        redBoxLabel.textColor = UIColor.whiteColor()
        redBox.addSubview(redBoxLabel)
        
        var actionBtn = UIButton(frame: CGRect(x: 0, y: 300, width: self.view.frame.width, height: 30))
        actionBtn.setTitle("Click me!", forState: .Normal)
        actionBtn.backgroundColor = UIColor.greenColor()
        actionBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        actionBtn.addTarget(self, action: "pressedCodedBtn:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(actionBtn)
        
//        var helloImg = UIImage(named: "hello.jpg")
//        var helloImgView = UIImageView(image: helloImg)
//        helloImgView.frame = CGRect(x: 50 , y: 350, width: 150 , height: 150)
//        helloImgView.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleRightMargin
//        self.view.addSubview(helloImgView)
        
        
        var boxScrollView = UIScrollView(frame: CGRect(x: 50, y: 350, width: 200, height: 300))
        boxScrollView.backgroundColor = UIColor.grayColor()
        boxScrollView.contentSize = CGSize(width: 200, height: 900)
        self.view.addSubview(boxScrollView)
        
        var greenBox = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 300))
        greenBox.backgroundColor = UIColor.greenColor()
            
        var yellowBox = UIView(frame: CGRect(x: 0, y: 300, width: 200, height: 300))
        yellowBox.backgroundColor = UIColor.yellowColor()
                
        var purpleBox = UIView(frame: CGRect(x: 0, y: 600, width: 200, height: 300))
        purpleBox.backgroundColor = UIColor.purpleColor()
        
        boxScrollView.addSubview(greenBox)
        boxScrollView.addSubview(yellowBox)
        boxScrollView.addSubview(purpleBox)

    }
    
    func pressedCodedBtn(sender: UIButton) {
        println("Hello World!")
        sender.removeFromSuperview()
    }
    
}

