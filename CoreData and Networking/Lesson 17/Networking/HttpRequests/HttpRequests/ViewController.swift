//
//  ViewController.swift
//  HttpRequests
//
//  Created by Antonio de Perio on 19/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let weatherApi = WeatherAPI()
        
        weatherApi.getMelbourneTemp { (tempModel) -> (Void) in
            
            print(tempModel.tempReading!)
        }
    }
    

}

