//
//  CitiesTableViewController.swift
//  Little Travel Guide
//
//  Created by Roy Ho on 12/3/15.
//  Copyright © 2015 Roy Ho. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {
    
    var myCities: [City] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let city1 = City()
        city1.placeName = "Sydney"
        let city2 = City()
        city2.placeName = "Melbourne"
        let city3 = City()
        city3.placeName = "Brisbane"
        
        myCities = [city1, city2, city3]
        
        city1.shortDescription = "Beaches, Sun, Surf"
        city2.shortDescription = "Culture, Arts, Food"
        city3.shortDescription = "Churches, Wine"
        
        city1.imageFileName = "Adelaide.png"
        city2.imageFileName = "Melbourne.png"
        city3.imageFileName = "Sydney.png"
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return self.myCities.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as? MyTableViewCell
        let city = self.myCities[indexPath.row]
        cell!.cityNameLabel.text = city.placeName
        cell!.cityDescriptionLabel.text = city.shortDescription
        let cityPic = UIImage(named: city.imageFileName)
        cell!.cityImage.image = cityPic
        
        
        
        
        
//        cell.textLabel!.text = myCityInstance.placeName
//        cell.detailTextLabel?.text = myCityInstance.shortDescription


        return cell!
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
