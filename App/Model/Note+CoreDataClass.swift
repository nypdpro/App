//
//  Note+CoreDataClass.swift
//  App
//
//  Created by cdv on 16.02.2023.
//

import Foundation
import CoreData

@objc(Note)
public class Note: NSManagedObject, Identifiable {
    
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var date: Date!
    @NSManaged public var id: String!
    @NSManaged public var text: String!
    @NSManaged public var title: String!

    
    
}
