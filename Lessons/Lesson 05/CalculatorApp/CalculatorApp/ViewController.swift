//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Sam Wijesinha on 26/11/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    
//    init()
//    {
//        
//    }

    
    @IBOutlet weak var numberOne: UITextField?
    @IBOutlet weak var numberTwo: UITextField?
    @IBOutlet weak var answer: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func addition(sender: AnyObject?)
    {
        let firstNumberString = String(numberOne)
        
        let secondNumberString = String(numberTwo)
        
        let firstNumber = Int(firstNumberString)!
        
        let secondNumber = Int(secondNumberString)!
        
        
        let math = Math()
        
        var result = math.addition(firstNumber, secondNumber: secondNumber)
        self.answer! = Int(result)!

}
}
