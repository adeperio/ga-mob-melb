//
//  weatherappViewController.swift
//  http@request
//
//  Created by Sam Wijesinha on 21/01/2016.
//  Copyright © 2016 Roy Ho. All rights reserved.
//

import UIKit

class weatherappViewController: UIViewController {
    
    @IBOutlet weak var city: UILabel!
    
    @IBOutlet weak var temp: UILabel!
    
    @IBOutlet weak var enterCity: UITextField!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=Melbourne,au&appid=a3fa12322e376dfbce8083c7f3d84236")
        
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
                        
                        let celcius = Double(temperature! as! NSNumber) - 273.15
                        
                        dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            
                            //Your UI Code in Here
                            self.city.text! = String(self.enterCity)
                            self.temp.text! = String(celcius)
                        })
                    }
                }
                catch {
                    print(error)
                    
                }
            }
            
        }
        task.resume()
        
    }
    
    
    @IBAction func findWeather(sender: AnyObject) {
       
        
    }
    

}
