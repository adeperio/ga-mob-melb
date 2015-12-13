//
//  ToDoTasks.swift
//  ToDo App
//
//  Created by Brett J. Rapp on 10/12/2015.
//  Copyright © 2015 Brett J. Rapp. All rights reserved.
//

import Foundation
import UIKit

class ToDoTasks {
    
    func getToDoTasks() -> Tasks {
        
        let tsk = Tasks ()
        tsk.Task = "Build App"
        tsk.Done = Bool
     
        
        return tsk
    }
        

}






//    {
//        
//        func getMelbourneCity() -> City {
//            
//            let cty = City ()
//            cty.myPopulation = "Population: 4.087 million"
//            cty.myPlaceType = "City"
//            cty.myName = "Melbourne"
//            cty.myLongDescription = "Melbourne, Victoria’s coastal capital, is a city of stately 19th-century buildings and tree-lined boulevards. Yet at its centre is the strikingly modern Federation Square development, with plazas, bars, restaurants and cultural events along the Yarra River. In Southbank, the Melbourne Arts Precinct is site of Arts Centre Melbourne – a performing arts complex – and National Gallery of Victoria, displaying Australian and Indigenous art."
//            
//            return cty

