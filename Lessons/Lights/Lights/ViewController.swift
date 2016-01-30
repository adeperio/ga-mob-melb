//
//  ViewController.swift
//  Lights
//
//  Created by Sam Wijesinha on 12/01/2016.
//  Copyright © 2016 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleSwitch(sender: AnyObject) {
        
        if let lightSwitch = sender as? UISwitch {
            
            
            NSUserDefaults.standardUserDefaults().setValue(lightSwitch.on, forKey: "LightStatus")
            
            viewLightStatus()
        }
        
        
        
        
    }
    
    func viewLightStatus(){
        
        let currentLightStatus = NSUserDefaults.standardUserDefaults().boolForKey("LightStatus")
        
        if(currentLightStatus){
            
            self.view.backgroundColor = UIColor.yellowColor()
        } else {
            
            self.view.backgroundColor = UIColor.blackColor()
        }
        
    }

}

