//
//  ViewController.swift
//  OtletActions2
//
//  Created by Brett J. Rapp on 24/11/2015.
//  Copyright © 2015 Brett J. Rapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloWorldLabel : UILabel?
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabel(sender: AnyObject?)
    {
       self.helloWorldLabel!.text = "Hello Brett"
        //                          = String (7)
    }

}

