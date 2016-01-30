//
//  ViewController.swift
//  Weather
//
//  Created by Antonio de Perio on 21/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempReading: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        //1. Create Request
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=Melbourne&appid=9ddcd9991b7d1d178d2ce09385556369")
        
        //2. Create a "Data Task"
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
            
            do{
                let jsonObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                
                
                if let responseDict = jsonObject as? NSDictionary {
                    
                    let locationWeather = LocationWeather(dict: responseDict)
                    let temp = locationWeather.temp
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        
                        self.tempReading.text = temp
                        
                    })
                    
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

