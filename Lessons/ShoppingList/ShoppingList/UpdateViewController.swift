//
//  UpdateViewController.swift
//  ShoppingList
//
//  Created by Antonio de Perio on 14/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit

class UpdateViewController: UIViewController {
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    var updateItem : ShoppingItem?
    
    
    @IBOutlet weak var itemNameTextField: UITextField!
    
    @IBAction func updateItem(sender: AnyObject)
    {
        if(self.updateItem != nil){
            
            
            do{
                self.updateItem!.itemName = self.itemNameTextField!.text!
                try self.managedObjectContext.save()
                self.navigationController!.popViewControllerAnimated(true)
            }
            catch{
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if(self.updateItem != nil){
        
            self.itemNameTextField!.text = self.updateItem!.itemName!
            
        }
        
    }
}
