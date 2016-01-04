//
//  ViewController2.swift
//  dismissVC
//
//  Created by Sam Wijesinha on 1/12/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func navigate(sender: AnyObject?) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
        
    
    
}

