//
//  ViewController.swift
//  tableView
//
//  Created by Sam Wijesinha on 30/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table1Text: UITextField!
    @IBOutlet weak var table2Text: UITextField!
    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    var table1Data = ["a"]
    var table2Data = ["1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addData(sender: AnyObject) {
        
        //add your data into tables array from textField
        table1Data.append(table1Text.text!)
        table2Data.append(table2Text.text!)
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            //reload your tableView
            self.table1.reloadData()
            self.table2.reloadData()
        })
        
        
        table1Text.resignFirstResponder()
        table2Text.resignFirstResponder()
    }
    
    //delegate methods
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == table1 {
            return table1Data.count
        }else if tableView == table2 {
            return table2Data.count
        }
        return Int()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if tableView == table1 {
            let cell = table1.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
            
            let row = indexPath.row
            cell.textLabel?.text = table1Data[row]
            
            return cell
        }else if tableView == table2 {
            
            let cell = table2.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath)
            
            let row = indexPath.row
            cell.textLabel?.text = table2Data[row]
            
            return cell
        }
        
        return UITableViewCell()
    }
}