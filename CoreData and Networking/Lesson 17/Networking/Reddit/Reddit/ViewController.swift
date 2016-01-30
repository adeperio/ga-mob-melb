//
//  ViewController.swift
//  Reddit
//
//  Created by Antonio de Perio on 19/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1. Create Request
        let url = NSURL(string: "http://mashable.com/stories.json")
        
        //2. Create a "Data Task"
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
            //            let dataString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
            do{
                let jsonObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                
                
                if let responseDict = jsonObject as? NSDictionary {
                    
                    
                    print(responseDict)
                    
                    
                    
                    
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


}

