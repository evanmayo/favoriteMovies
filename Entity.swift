//
//  Entity.swift
//  favoriteMovies
//
//  Created by Evan Leong on 10/12/15.
//  Copyright © 2015 Evan Leong. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Entity: NSManagedObject {

    func setMovieImage(image: UIImage) {
        
        let data = UIImagePNGRepresentation(image)
        self.image = data
        
    }
    
    func getMovieImage() -> UIImage {
        
        let image = UIImage(data: self.image!)
        return image!
    }
        
}
