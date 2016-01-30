//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    
    
    @IBOutlet weak var numEnter: UITextField!
    
    @IBOutlet weak var numDisplay: UILabel!
    
    
    @IBAction func fibonacciCalc(sender: AnyObject) {
        
        func fibonacci(number: Int) -> (Int) {
            if number <= 1 {
                return number
            } else {
                return fibonacci(number - 1) + fibonacci(number - 2)
            }
        }
        let enteredNum = Int(numEnter.text!)
        let fibNumber = fibonacci(enteredNum!)
        numDisplay.text! = ("The \(enteredNum!) Fibonacci number is: \(fibNumber)")
 
}


}
    
    

