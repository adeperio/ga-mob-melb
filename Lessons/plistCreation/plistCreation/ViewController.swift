//
//  ViewController.swift
//  plistCreation
//
//  Created by Sam Wijesinha on 12/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask,true)[0] as NSString
        
        let pListfile = documentsPath.stringByAppendingPathComponent("Players.plist")
     
        
        var myArray : NSMutableArray? = NSMutableArray(contentsOfFile: pListfile as String)
        
        if (myArray != nil) {
            
            //if the plist exists
            
            let firstItem  = myArray![0] as? NSDictionary
            
            if (firstItem != nil) {
                
               firstItem?.setValue("Tony", forKey: "Name")
                
            }
            
            print("Number of items in Plist \(myArray!.count)")
            
            
        } else {
            
            //if the plist does not exist
            myArray = []
            
        }
        
        //add Dictionary Object
        let player = [
            "Name" : "Tony",
            "Weight" : 163,
            "Height" : 173
        ]
        
        myArray?.addObject(player)
            

        
        //write to plist - writes as one whole file not just amended items
        myArray!.writeToFile(pListfile, atomically: true)
        
    }

}
