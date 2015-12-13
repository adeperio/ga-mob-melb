//
//  AddNumberViewController.swift
//  demo_outlets
//
//  Created by Sam Wijesinha on 24/11/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//

import Foundation
import UIKit

//The second has two text
//fields, a button and a text label. When the button is pressed, make the label print the sum
//of the ints in the text fields. Bonus: Make the keyboards on the second screen numerical,
//print an error if the number is invalid

class AddNumberViewController: UIViewController {
    
    @IBOutlet weak var firstNumberText : UITextField?
    @IBOutlet weak var secondNumberText : UITextField?
    @IBOutlet weak var answerLabel : UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sum(sender: AnyObject?)
    {
        
        self.answerLabel!.text! = String(firstNumberText!.text!)+String(secondNumberText!.text!)
        
    }
    
    }

