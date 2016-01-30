//
//  ViewController.swift
//  LoginScreen
//
//  Created by Sam Wijesinha on 5/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
      InitialiseView()
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func InitialiseView () {
        
        let rectSubview = CGRectMake(self.view.frame.origin.x+20,
            self.view.frame.origin.y+10,
            self.view.frame.size.width-50,
            self.view.frame.size.height-50)
        
        let mainView = UIView(frame: rectSubview)
        
        let username = UITextField(frame: CGRectMake(40,10,300,40))
        username.backgroundColor = UIColor.whiteColor()
        let password = UITextField(frame: CGRectMake(40,70,300,40))
        password.backgroundColor = UIColor.whiteColor()
        let loginButton = UIButton(frame: CGRectMake(10,200,200,50))
        
        loginButton.setTitle("Login", forState: .Normal)
        
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        loginButton.addTarget(self, action: "userTappedLoginButton", forControlEvents: .TouchUpInside)
        
        mainView.backgroundColor = UIColor.blueColor()
        mainView.addSubview(username)
        mainView.addSubview(password)
        mainView.addSubview(loginButton)
        
       
        self.view.addSubview(mainView)
        
        
        
        
    }

    
    func userTappedLoginButton()
    {
        
        let alert = UIAlertController(title: "Login", message: "You have logged in", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion:nil)
        
        
    }


}

