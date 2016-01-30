//
//  Animal.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class Animal: NSObject {
    let name: String
    let desc: String
    
    init(name: String, desc: String) {
        self.name = name
        self.desc = desc
    }
    
    func prettyAnimalName() -> String {
        return "Animal name: " + self.name
        
        
    }
    
    func prettyAnimalDesc() -> String {
        return "Animal Description: " + self.desc
        
        
    }
    
}
