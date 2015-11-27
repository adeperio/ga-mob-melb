//
//  ViewController.swift
//  PolyMorphism
//
//  Created by Sam Wijesinha on 26/11/2015.
//  Copyright © 2015 SamWij. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1 : UILabel?
    @IBOutlet weak var view2 : UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hitMe(Sender: AnyObject?){
        
        //self.view1!.frame.origin.x += 2
        //self.view2!.frame.origin.y += 2
        
        let view1 = self.view1!
        let view2 = self.view2!
        
        moveViews(view1)
        moveViews(view2)
        
    }
    
    func moveViews(view : UIView){
        
        view.frame.origin.x += 2
        view.frame.origin.y += 2    }

}

