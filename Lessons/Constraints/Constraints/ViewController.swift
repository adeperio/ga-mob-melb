//
//  ViewController.swift
//  Constraints
//
//  Created by Sam Wijesinha on 5/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    let rectsubView1 = CGRectMake(self.view.frame.origin.x+20,
        self.view.frame.origin.y+20,
        self.view.frame.size.width-40,
        self.view.frame.size.height-40 )
    
    let subView1 = UIView(frame: rectsubView1)
        subView1.backgroundColor = UIColor.greenColor()
        self.view.backgroundColor = UIColor.orangeColor()
        
       subView1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(subView1)
    subView1.layer.cornerRadius = 30
        let constraintTop = NSLayoutConstraint(
            item: subView1,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Top,
            multiplier: 1,
            constant: 30)
        
        
        let constraintRight = NSLayoutConstraint(
            item: subView1,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Right,
            multiplier: 1,
            constant: -30)
        
        let constraintBottom = NSLayoutConstraint(
            item: subView1,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Bottom,
            multiplier: 1,
            constant: -30)
        
        let constraintLeft = NSLayoutConstraint(
            item: subView1,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Left,
            multiplier: 1,
            constant: 30)
        self.view.addConstraint(constraintTop)
        self.view.addConstraint(constraintRight)
        self.view.addConstraint(constraintBottom)
        self.view.addConstraint(constraintLeft)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

