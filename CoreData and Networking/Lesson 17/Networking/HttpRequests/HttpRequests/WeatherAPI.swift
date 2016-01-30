//
//  WeatherAPI.swift
//  HttpRequests
//
//  Created by Antonio de Perio on 21/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import Foundation

class WeatherAPI {

    func getMelbourneTemp(completed: (tempModel : TemperatureModel) -> (Void))
    {
        let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=Melbourne&appid=9ddcd9991b7d1d178d2ce09385556369")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, err) -> Void in
            
            if(err == nil)
            {
                do{
                    let jsonObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let responseDict = jsonObject as? NSDictionary {
                        
                        print(responseDict)
                        
                        let temperatureModel = TemperatureModel(dict: responseDict)
                        
                        completed(tempModel: temperatureModel)
                        
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