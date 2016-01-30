//
//  ShoppingListTableViewController.swift
//  ShoppingList
//
//  Created by Antonio de Perio on 13/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit
import CoreData

class ShoppingListTableViewController: UITableViewController {

    // Retreive the managedObjectContext from AppDelegate
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    var myShoppingItems : [ShoppingItem] = []
    
    
    @IBAction func addShoppingItem(sender: AnyObject)
    {
        let addItemAlertVC = UIAlertController(title: "Add Item", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        addItemAlertVC.addAction(UIAlertAction(title: "Add", style: .Default, handler: { (UIAlertAction) -> Void in
            
            //Add to CoreData
            let newItem = NSEntityDescription
                .insertNewObjectForEntityForName("ShoppingItem", inManagedObjectContext: self.managedObjectContext ) as! ShoppingItem
            
            let myTextField = addItemAlertVC.textFields![0]
            newItem.itemName = myTextField.text
            newItem.quantity = 3
            
            do {
                try self.managedObjectContext.save()
            } catch {
                fatalError("Failure to save context: \(error)")
            }

            self.reloadTable()
            
        }))
        
        addItemAlertVC.addTextFieldWithConfigurationHandler { (textField) -> Void in
            
            textField.placeholder = "Add your shopping item"
        }
        
        let cancelAction = UIAlertAction(title: "Cancel",
            style: .Default) { (action: UIAlertAction) -> Void in
        }
        
        addItemAlertVC.addAction(cancelAction)
        
        self.presentViewController(addItemAlertVC, animated: true, completion: { () -> Void in
            
            
        })
    }

    
    
    func reloadTable(){
    
        // Create a new fetch request using the LogItem entity
        let fetchRequest = NSFetchRequest(entityName: "ShoppingItem")
        
        do
        {
            // Execute the fetch request, and cast the results to an array of LogItem objects
            let fetchResults = try self.managedObjectContext.executeFetchRequest(fetchRequest)
            
            self.myShoppingItems = fetchResults as! [ShoppingItem]
            self.tableView.reloadData()
            
        }
        catch{
            
            print(error)
        }

    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        super.viewDidAppear(animated)
        reloadTable()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.myShoppingItems.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("shoppingItem", forIndexPath: indexPath)

        // Configure the cell...
        
        let myShoppingItem : ShoppingItem = self.myShoppingItems[indexPath.row]
        cell.textLabel!.text = myShoppingItem.itemName!

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let myItemToUpdate = self.myShoppingItems[indexPath.row]
        self.performSegueWithIdentifier("goToUpdateSegue", sender: myItemToUpdate)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            do{
                self.managedObjectContext.deleteObject(self.myShoppingItems[indexPath.row])
                try self.managedObjectContext.save()
                
                self.myShoppingItems.removeAtIndex(indexPath.row)
                
                // Delete the row from the data source
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            }
            catch
            {
                print(error)
            }

            

        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destinationVC = segue.destinationViewController as? UpdateViewController
        let myItemToUpdate = sender as? ShoppingItem
        
        if(destinationVC != nil && myItemToUpdate != nil){
        
            destinationVC!.updateItem = myItemToUpdate
        }
        
    }
    

}
