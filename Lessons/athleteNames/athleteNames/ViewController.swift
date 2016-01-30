//
//  ViewController.swift
//  athleteNames
//
//  Created by Sam Wijesinha on 12/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tablevView: UITableView!
   
    var coachs : NSMutableArray?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask,true)[0] as NSString
        
        let pListfile = documentsPath.stringByAppendingPathComponent("Coaches.plist")
        
        self.coachs = NSMutableArray(contentsOfFile: pListfile as String)
        
        if (coachs == nil) {

            //if the plist does not exist
            self.coachs = []
            
            //add Dictionary Object
            let coach1 = [
                "Name" : "Tony",
                "Weight" : 163,
                "Height" : 173,
            ]
            let coach2 = [
                "Name" : "sam",
                "Weight" : 50,
                "Height" : 166
            ]
            
            let coach3 = [
                "Name" : "Charlie",
                "Weight" : 70,
                "Height" : 200
            ]
            
            coachs?.addObjectsFromArray([coach1, coach2, coach3])

            //write to plist - writes as one whole file not just amended items
            coachs!.writeToFile(pListfile, atomically: true)
            
        }
        
        
    }

        
        
    
    

    
   func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return coachs!.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cellid", forIndexPath: indexPath)
        
        //Configure the cell...
        let dict = self.coachs![indexPath.row]
       cell.textLabel!.text = dict["Name"] as? String
        
        let myHeight = dict["Height"] as? Int
        cell.detailTextLabel!.text = String(myHeight!)
        
        
        return cell
    }
    
    

}

