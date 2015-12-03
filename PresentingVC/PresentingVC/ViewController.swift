//
//  ViewController.swift
//  PresentingVC
//
//  Created by Brett J. Rapp on 1/12/2015.
//  Copyright © 2015 Brett J. Rapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moveToVC2(sender: AnyObject) {
    
        
       self.performSegueWithIdentifier("viewController2Segue", sender: sender)
}

}