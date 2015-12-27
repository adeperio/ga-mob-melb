//
//  ViewController2.swift
//  notifications
//
//  Created by Sam Wijesinha on 15/12/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//


import UIKit

class ViewController2: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func showAlert(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("MyAlertNotification", object: "I'm front View Controller 2")
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
