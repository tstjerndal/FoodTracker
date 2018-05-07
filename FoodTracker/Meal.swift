//
//  Meal.swift
//  FoodTracker
//
//  Created by Tommy Stjerndal on 2018-05-04.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties

    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating// Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0  {
            return nil
        }
    }
    

    
    var name: String
    var photo: UIImage?
    var rating: Int
    
}
