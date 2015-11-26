//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var newNUmber: UITextField!
    @IBOutlet weak var Newtotal: UILabel!
    
    
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.


    @IBAction func addNumbers(sender: AnyObject) {
  
    let number = Int(newNUmber.text!)
    let total2 = Int(Newtotal.text!)
        
        
        
    }

}

