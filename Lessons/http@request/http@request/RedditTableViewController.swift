//
//  RedditTableViewController.swift
//  http@request
//
//  Created by Roy Ho on 1/19/16.
//  Copyright © 2016 Roy Ho. All rights reserved.
//

import UIKit

class RedditTableViewController: UITableViewController {

    
    @IBOutlet weak var city: UILabel!
    
    @IBOutlet weak var temp: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=Melbourne&appid=a3fa12322e376dfbce8083c7f3d84236")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, err) -> Void in
            
            //This block of code runs when the server has responded
            //let htmlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
            
            if(err == nil)
            {
                do{
                    let jsonObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let responseDict = jsonObject as? NSDictionary {
                        //print(responseDict)
                        let temperature = responseDict["main"]!["temp"]!
                        print (temperature)
                      self.city.text! = "Melbourne"
                        self.temp.text!  = String(temperature)
                      
                    }
                }
                catch {
                    print(error)
                    
                }
            }
            
        }
        task.resume()
        
        
    }
    
    // MARK: - Table view data source
    
    


    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
