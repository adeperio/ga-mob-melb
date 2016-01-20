//
//  ViewController.swift
//  Delegates
//
//  Created by Antonio de Perio on 10/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit
//
protocol AddViewControllerDelegate{
    
    func addItem(newItem: Todo)
}

class AddViewController: UIViewController {
    
    var delegate: AddViewControllerDelegate?

    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func addToDo(sender: AnyObject) {
        

        self.delegate!.addItem(Todo(name: self.nameTextField.text!, desc: self.descriptionTextField.text!))
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}

