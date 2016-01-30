//
//  LocationWeather.swift
//  Weather
//
//  Created by Antonio de Perio on 21/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import Foundation


class LocationWeather {
    
    var temp : String?
    
    init(dict: NSDictionary){
        
        let main = dict["main"]
        
        let temp = main!["temp"]
        
        self.temp = String(temp!!)
    
    }


}