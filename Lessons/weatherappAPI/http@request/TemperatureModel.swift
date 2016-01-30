//
//  TemperatureModel.swift
//  http@request
//
//  Created by Sam Wijesinha on 21/01/2016.
//  Copyright © 2016 Roy Ho. All rights reserved.
//

import Foundation
class TemperatureModel

{
    
    var tempReading : String?
    var lat : String?
    var lon : String?
    var maxTemp : String?
    var minTemp : String?
    
    init(dict: NSDictionary){
        
        let main = dict["main"]!
        let temp = main["temp"]!
        
        
        let coord = dict["coord"]
        let lat = coord!["lat"]
        let lon = coord!["lon"]
        
        self.lat = String(lat)
        self.lon = String(lon)
        
        let maxTemp = main["temp_max"]
        let minTemp = main["temp_min"]
        self.maxTemp = String(maxTemp)
        self.minTemp = String(minTemp)
        
        
        self.tempReading = String(temp)
    }
    
    
}
