//
//  ViewController.swift
//  demo_outlets
//
//  Created by Sam Wijesinha on 24/11/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//

import UIKit

//Create a new app with two screens. One has a button, a text field and a text label, when the
//button is pressed, make the label say ‘hello \(textFromButton)!’. The second has two text
//fields, a button and a text label. When the button is pressed, make the label print the sum
//of the ints in the text fields. Bonus: Make the keyboards on the second screen numerical,
//print an error if the number is invalid

class ViewController: UIViewController {
    
    @IBOutlet weak var newLabel : UILabel?
    @IBOutlet weak var textField : UITextField?

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
        
      self.newLabel!.text = String("Hello \(textField!.text!)!")
    }
}

