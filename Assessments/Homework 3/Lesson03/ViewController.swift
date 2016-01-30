//
//  ViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //
    //    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    
    @IBOutlet weak var modalView: UILabel!
    
    let swipeRec = UISwipeGestureRecognizer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        swipeRec.addTarget(self, action: "swipedView")
        
        modalView.addGestureRecognizer(swipeRec)
        
        modalView.userInteractionEnabled = true
        
    }
    
    func swipedView(){
        let VCInstance = self.storyboard?.instantiateViewControllerWithIdentifier("ModalVC")
        
        self.presentViewController(VCInstance!, animated: true, completion: nil)
    }
    
    //    TODO two: Add an imageview to the modal dialog presented in TODO two.
    
    
    
    //    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    //
    
    
    
    @IBAction func btnDisplayTable(sender: AnyObject) {
        
        self.performSegueWithIdentifier("show", sender: sender)
    }
    
    
        
    
    
    
    
    
}



