//
//  GroupViewController.swift
//  programattic views
//
//  Created by Dan Seals on 2/4/15.
//  Copyright (c) 2015 Dan Seals. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var usernameField = UITextField(frame: CGRect(x: 0, y: 320, width: self.view.frame.width, height: 30))
        usernameField.placeholder = "username"
        self.view.addSubview(usernameField)
        
        var passwordField = UITextField(frame: CGRect(x: 0, y: 360, width: self.view.frame.width, height: 30))
        passwordField.placeholder = "password"
        passwordField.secureTextEntry = true
        self.view.addSubview(passwordField)
        
        var loginBtn = UIButton(frame: CGRect(x: 0, y: 420, width: self.view.frame.width, height: 30))
        loginBtn.setTitle("Login", forState: .Normal)
        loginBtn.backgroundColor = UIColor.blueColor()
        loginBtn.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        loginBtn.addTarget(self, action: "pressedLoginBtn:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(loginBtn)
    }
    
    func pressedLoginBtn(sender: UIButton) {
        println("Hello World!")
        sender.removeFromSuperview()
    }
}