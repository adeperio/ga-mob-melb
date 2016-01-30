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
        
        let weatherAPI = WeatherAPI()
        
        weatherAPI.getMelbourneTemp {(tempModel) -> (Void) in
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                //Your UI Code in Here
                self.temp.text! = String(tempModel.tempReading!)
            })
            
           
            
        }

        
    }
    
    
    @IBAction func findWeather(sender: AnyObject) {
       
        
    }
    

}
