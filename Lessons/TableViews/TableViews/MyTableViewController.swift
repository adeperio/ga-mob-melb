//
//  MyTableViewController.swift
//  TableViews
//
//  Created by Antonio de Perio on 3/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController
{
    var myCities : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCities = ["Melbourne", "Adelaide", "Perth", "Darwin", "Brisbane", "Sydney", "Hobart"]

        self.tableView.reloadData()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }



    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.myCities!.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellReuseID", forIndexPath: indexPath) as? MyTableViewCell

        // Configure the cell...
        
        //let indexOfCityElement = indexPath.row //1
        
        //let myCity = self.myCities![indexOfCityElement] //self.myCities[1]
        
        cell!.cityNamelabel.text = self.myCities![indexPath.row] // Melbourne
        cell!.cityDescriptionLabel.text = "My City Description"
        let cityPic = UIImage(named: "melb_rain.jpg")
        cell!.cityimage.image = cityPic
        
        //cell.detailTextLabel?.text = "Some Description"

        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 156
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.performSegueWithIdentifier("showDetailSeque", sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       let detailVC =  segue.destinationViewController as?  MyDetailViewController
        let indexPath = sender as? NSIndexPath
        
        let cityName = self.myCities![indexPath!.row]
        
        
        if(detailVC != nil){
            detailVC?.cityDescriptionToDisplay = "My City Description"
            detailVC?.cityNameToDisplay = cityName
            
        }
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
