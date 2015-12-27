//
//  ViewController.swift
//  notifications
//
//  Created by Sam Wijesinha on 15/12/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIAlertViewDelegate{

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "alertShown:", name: "MyAlertNotification", object: nil)
    }
    
    func alertShown(notification: NSNotification){
//        let alertView = UIAlertController(title: "My Notification", message: "Alert is shown", preferredStyle: UIAlertControllerStyle.Alert)
//        
//        alertView.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
//        self.presentViewController(alertView, animated: true, completion: nil)
        
        let object = notification.object!
        let mystring = object as! String
        
        
        print("my notification received on the home screen:  \(mystring)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showAlert(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("MyAlertNotification", object: nil)
        
    }

}

