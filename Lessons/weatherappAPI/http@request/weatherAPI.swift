//
//  weatherAPI.swift
//  http@request
//
//  Created by Sam Wijesinha on 21/01/2016.
//  Copyright © 2016 Roy Ho. All rights reserved.
//

import Foundation
class WeatherAPI {
    
    func getMelbourneTemp(completed: (tempModel : TemperatureModel) -> (Void)){
        
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=Melbourne,au&appid=a3fa12322e376dfbce8083c7f3d84236")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, err) -> Void in
            
            //This block of code runs when the server has responded
            //let htmlContent = NSString(data: data!, encoding: NSUTF8StringEncoding)
            
            
            if(err == nil)
            {
                do{
                    let jsonObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let responseDict = jsonObject as? NSDictionary {
                        
                        let tempModel = TemperatureModel(dict: responseDict)
                       
                        completed(tempModel: tempModel)
                    }
                }
                catch {
                    print(error)
                    
                }
            }
            
        }
        task.resume()
        
        
    }
    
    
    
    
}