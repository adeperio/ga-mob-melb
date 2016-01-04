//
//  MyDetailViewController.swift
//  TableViews
//
//  Created by Sam Wijesinha on 8/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit

class MyDetailViewController: UIViewController {
    
    var cityNameToDisplay : String?
    var cityDescriptionToDisplay : String?
    
    @IBOutlet weak var cityNamelabel: UILabel!
    @IBOutlet weak var cityDescriptionLabel: UILabel!
  

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cityDescriptionLabel!.text = self.cityDescriptionToDisplay
        self.cityNamelabel!.text = self.cityNameToDisplay
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
