//
//  ViewController.swift
//  Networking
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
        let url = NSURL(string: "https://www.reddit.com/.json")
        
        //2. Create a "Data Task"
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
            print(NSString(data: data!, encoding: NSUTF8StringEncoding))
            
        }
        
        //3. Execute the Request
        task.resume()
        
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

