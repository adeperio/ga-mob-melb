//
//  ViewController.swift
//  MathClass
//
//  Created by Brett J. Rapp on 26/11/2015.
//  Copyright © 2015 Brett J. Rapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberField: UITextField!
    @IBOutlet weak var secondNumberField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButton(sender: AnyObject) {
        let num1 = firstNumberField.text
        let num2 = secondNumberField.text
        let math = MathFunctions()
        
        let result = math.add(Int(num1!)!, secondNumber: Int(num2!)!)
        
        resultLabel.text = String(result)
    }

    @IBAction func subtract(sender: AnyObject) {
        let num1 = firstNumberField.text
        let num2 = secondNumberField.text
        let math = MathFunctions()
        
        let result = math.subtract(Int(num1!)!, secondNumber: Int(num2!)!)

        
        resultLabel.text = String(result)
    }
    
    @IBAction func divide(sender: AnyObject) {
        let num1 = firstNumberField.text
        let num2 = secondNumberField.text
        let math = MathFunctions()
        
        let result = math.divide(Int(num1!)!, secondNumber: Int(num2!)!)
        
        resultLabel.text = String(result)
    }
    
    @IBAction func multiply(sender: AnyObject) {
        let num1 = firstNumberField.text
        let num2 = secondNumberField.text
        let math = MathFunctions()
        
        let result = math.multiply(Int(num1!)!, secondNumber: Int(num2!)!)
        
        resultLabel.text = String(result)
    }
      }



