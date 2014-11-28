//
//  Person.swift
//  DinnerOptions
//
//  Created by Zachary Drossman on 11/24/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import UIKit

class Person: NSObject {
    let name : String
    var cuisinePreferences : [String]?
    var restaurantOwned : Restaurant?
    
    init(name: String, cuisinePreferences: [String]?) {
        self.name = name
        
        if let tempCuisinePreferences = cuisinePreferences {
            self.cuisinePreferences = tempCuisinePreferences
        }
    }
    
    convenience init(name : String) {
        self.init(name: name, cuisinePreferences: nil)
    }
    
    func choose(placeToEat:[Restaurant]) {
        
        if let tempRestaurantOwned = restaurantOwned {
            println(tempRestaurantOwned.name)
        }
            
        else {
            
            var hasPreference = false
            
            if let tempCuisinePreferences = cuisinePreferences {
                for aRestaurant in placeToEat {
                    for preference in tempCuisinePreferences {
                        if preference == aRestaurant.cuisine {
                            println("I would like to go to " + aRestaurant.name)
                            hasPreference = true
                            break
                        }
                    }
                    break
                }
            }
            
            if hasPreference == false {
                println("\(self.name) has no preferences.")
            }
        }
    }
}