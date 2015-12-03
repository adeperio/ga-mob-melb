//
//  ViewController.swift
//  Travel App
//
//  Created by Brett J. Rapp on 1/12/2015.
//  Copyright © 2015 Brett J. Rapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cityButton(sender: AnyObject) {
        
        let Ctry = Country()
        Ctry.MajorCities = "Sydney, Melbourne, Brisbane"
        Ctry.placeType = "Country"
        Ctry.name = "Australia"
        Ctry.description = "Australia is an amazing place"
        displayPlace(Ctry)
        
    }

    @IBAction func countryButton(sender: AnyObject) {
        
        let cty = City()
        cty.population = "$.87 million"
        cty.placeType = "City"
        cty.name = "Melbourne"
        cty.description = "Australia"
        displayPlace(cty)
            
    }

    func displayPlace(place:Place)  {
       
        if let cty = place as? City {
        
            self.countryLabel.text = cty.description
        }
        else if let country = place as? Country {
            self.descriptionLabel.text = country.description
            self.infoLabel.text = country.description

        }
        
    
        
    }
        
}


