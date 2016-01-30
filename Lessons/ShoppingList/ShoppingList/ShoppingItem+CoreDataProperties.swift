//
//  ShoppingItem+CoreDataProperties.swift
//  ShoppingList
//
//  Created by Antonio de Perio on 14/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension ShoppingItem {

    @NSManaged var itemName: String?
    @NSManaged var quantity: Int16

}
