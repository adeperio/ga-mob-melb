//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var myName: UITextField!
    
    @IBOutlet weak var myAge: UITextField!
   
   
    @IBOutlet weak var myLabel: UILabel!
    
    
    
    @IBOutlet weak var myDrinkLabel: UILabel!

    
    /*
        TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    
        TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
        TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
        TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    @IBAction func btnGenerate(sender: AnyObject) {
        
          self.myLabel!.text = String("Hello \(myName!.text!), you are \(myAge!.text!)!")
        
          self.myDrinkLabel!.text = "Hello World"
       
      
    }
    
    
    @IBAction func drinkAge(sender: AnyObject) {

        
        
        let myAgeInt = Int(myAge!.text!)
        
        
        
        if(myAgeInt >= 16 && myAgeInt < 18){
            self.myLabel!.text = ("You can drive")
        }
        
        if(myAgeInt >= 18 && myAgeInt < 21){
            self.myLabel!.text = ("You can drive and vote")
        }
        
        if(myAgeInt >= 21){
            self.myLabel!.text = ("You can drive, vote, and drink")
        }
        
    }
    
}

