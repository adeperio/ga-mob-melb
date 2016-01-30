//
//  ViewController.swift
//  CodeViews
//
//  Created by Sam Wijesinha on 5/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    //position and size
        let rect = CGRectMake(self.view.frame.origin.x+10, self.view.frame.origin.y+20, self.view.frame.size.width-200, self.view.frame.size.height-200)
        
        let subView1 = UIView(frame: rect)
        subView1.backgroundColor = UIColor.redColor()
        self.view.addSubview(subView1)
        
        subView1.layer.cornerRadius = 100

        //UIView.animateWithDuration(5) { () -> Void in
            
    //subView1.frame.origin.x = self.view.frame.origin.x+100
        
        let subView2 = UIView(frame: rect)
        subView2.backgroundColor = UIColor.greenColor()
        self.view.addSubview(subView2)
        subView1.clipsToBounds = true
        self.view.addSubview(subView1)
        subView2.alpha = 1
        
        let rectbutton = CGRectMake(202, 200, 200, 50)
        
        let button1 = UIButton(frame: rectbutton)
        button1.setTitle("Tap Button", forState:  .Normal)
        button1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button1)
        button1.addTarget(self, action: "userTappedButton", forControlEvents: .TouchUpInside)
    }
    
    func userTappedButton ()
    {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion:nil)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

