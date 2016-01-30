//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myTodoItems : [Todo] = []
    
    @IBOutlet weak var enterToDo: UITextField!
    
    var taskName : String
    var taskDescription : String
    

        
        self.taskName = name
        self.taskDescription = desc


    override func viewDidLoad() {
        super.viewDidLoad()
//        self.dismissViewControllerAnimated(false, completion: nil)
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
            
            let todo1 = Todo(name: "Build app", desc: "My Description")
            let todo2 = Todo(name: "Get Groceries", desc: "My Description")
            let todo3 = Todo(name: "Finish Tax", desc: "My Description")
            let todo4 = Todo(name: "Start business idea", desc: "My Description")
            
            
            myTodoItems = [todo1, todo2, todo3, todo4]
            
            self.tableView.reloadData()
            
            NSNotificationCenter.defaultCenter().addObserver(
                self,
                selector: "toDoAddItem:",
                name: "MyAddToDoNotification",
                object: nil)
    
            
        })
        self.view.backgroundColor = UIColor.redColor()
        
        
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        
        
        TODO two: Make this class UITableViewDataSource a and that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
   
        
        

        
        
        func toDoAddItem(notification: NSNotification){
            
            let newtodo: AnyObject? = notification.object!
            let mynewtodo = newtodo as? Todo
            
            self.myTodoItems.append(mynewtodo!)
            
            self.tableView.reloadData()
            
            //print("my notification received on the home screen:  \(mystring)")
            
        }
        
        
        // MARK: - Table view data source
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }
        
         func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            return myTodoItems.count
        }
        
         func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
            
            //Configure the cell...
            cell.textLabel!.text = self.myTodoItems[indexPath.row].taskName
            cell.detailTextLabel!.text = self.myTodoItems[indexPath.row].taskDescription
            
            return cell
        }
        
        
        
        
}
