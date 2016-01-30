//
//  RedditTableViewController.swift
//  Reddit
//
//  Created by Antonio de Perio on 19/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit

class News {
    var headLine : String = ""
    var featureImage : UIImage?
}

class RedditTableViewController: UITableViewController
{
    var myArray : [News] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Create Request
        let url = NSURL(string: "http://mashable.com/stories.json")
        
        //2. Create a "Data Task"
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
//            let dataString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
            do{
                let jsonObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                

                if let responseDict = jsonObject as? NSDictionary {
                    
                    print(responseDict)
                    
                    let root = responseDict["hot"]
                    
                    self.myArray = []
                    
                    for var item in root as! NSArray {
                        
                        
                        let newsItem = News()
                        newsItem.headLine = item["title"] as! String
                        
                        let imageLink = item["feature_image"] as! String
                        
                        let imageUrl = NSURL(string: imageLink)
                        NSURLSession.sharedSession().dataTaskWithURL(imageUrl!) { (data, response, error) in
                            newsItem.featureImage = UIImage(data: data!)
                        }.resume()


                        self.myArray.append(newsItem)
                    }
                    
                    
                    self.tableView.reloadData()
                    

                

                }
                
            } catch{
            
                print("Error occured")
            }
        }
        
        //3. Execute the Request
        task.resume()
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
        return self.myArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! NewsTableViewCell
        
        let newsItem = self.myArray[indexPath.row]
        cell.newsHeadlineLabel.text = newsItem.headLine
        
        if(newsItem.featureImage != nil){
            cell.featureImageView.image = newsItem.featureImage!
        }

        
        
        return cell
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
