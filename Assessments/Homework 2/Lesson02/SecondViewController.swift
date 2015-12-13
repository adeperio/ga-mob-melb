//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var addNumber: UITextField!

<<<<<<< HEAD
    @IBOutlet weak var addAnswerLabel: UILabel!
    
    

    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to 
    
    //make this work.
    
    var myArray = [Int]()
    
    @IBAction func addCumulativeNumber(sender: AnyObject?) {
        
        let myInt = Int(addNumber!.text!)
=======
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    
    var myArray = [Int]()
    
    @IBAction func add(sender: AnyObject)
    {
        
        let myInt = Int(textField!.text!)
>>>>>>> d09d5372a5cb660c966041608cddee0633af35e4
        
        var sum = 0
        var counter = 0
        myArray.append(myInt!)
        
        while counter < myArray.count {
<<<<<<< HEAD
            var newValue = myArray[counter]
            sum += newValue
            counter++
        }
            self.addAnswerLabel!.text = String(sum)
          
            
        }
    
        
        
    
        }
=======
            let newValue = myArray[counter]
            sum += newValue
            counter++
        }
        self.resultLabel!.text = String(sum)
        //myArray.append(newValue)
    }
}
>>>>>>> d09d5372a5cb660c966041608cddee0633af35e4
