//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
    @IBOutlet weak var enterNumber: NSLayoutConstraint!

*/
    
    
    
    @IBOutlet weak var enterNumber: UITextField!
    
    @IBOutlet weak var isItPrime: UILabel!
    
    
    
    
    
    @IBAction func calculatePrime(sender: AnyObject) {
        let numberInt = (enterNumber!.text! as NSString).integerValue
      
      let i = numberInt
     
            let remainder = i % 2
            if (remainder == 0 ){
                self.isItPrime!.text = ("this is an even number")
            }
            else {
                self.isItPrime!.text = ("this is a uneven number")
            }
        }
        
   
}




