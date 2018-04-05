//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Andrew Miller on 05/04/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var type: String?
    @NSManaged public var toThing: Thing?

}
