//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var oddOrEvenLabel: UILabel!
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
    
    @IBAction func calculate(sender: AnyObject) {
        
        let number = Int(numberField.text!)
        
        if number! % 2 == 0 {
            oddOrEvenLabel.text = ("\(number!) is an even number")
        } else {
            oddOrEvenLabel.text = ("\(number!) is an odd number")
            
            
    
    
}

}
}