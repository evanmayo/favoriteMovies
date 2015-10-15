//
//  Entity+CoreDataProperties.swift
//  favoriteMovies
//
//  Created by Evan Leong on 10/12/15.
//  Copyright © 2015 Evan Leong. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Entity {

    @NSManaged var title: String?
    @NSManaged var movieDescription: String?
    @NSManaged var imdbUrl: String?
    @NSManaged var plotDescription: String?
    @NSManaged var image: NSData?

}
