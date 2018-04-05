//
//  Store+CoreDataProperties.swift
//  DreamLister
//
//  Created by Andrew Miller on 05/04/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//
//

import Foundation
import CoreData


extension Store {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Store> {
        return NSFetchRequest<Store>(entityName: "Store")
    }

    @NSManaged public var name: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toThing: NSSet?

}

// MARK: Generated accessors for toThing
extension Store {

    @objc(addToThingObject:)
    @NSManaged public func addToToThing(_ value: Thing)

    @objc(removeToThingObject:)
    @NSManaged public func removeFromToThing(_ value: Thing)

    @objc(addToThing:)
    @NSManaged public func addToToThing(_ values: NSSet)

    @objc(removeToThing:)
    @NSManaged public func removeFromToThing(_ values: NSSet)

}
