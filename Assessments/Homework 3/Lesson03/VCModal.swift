//
//  VCModal.swift
//  Lesson03
//
//  Created by Sam Wijesinha on 13/12/2015.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import Foundation
import UIKit


class dismissVC : UIViewController {
    
 //    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.   
    @IBAction func done(sender: AnyObject) {
        
        self.dismissViewControllerAnimated((true), completion: nil)
        
        
    }
    
}
