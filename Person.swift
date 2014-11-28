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
    
    func choose(placeToEat:[Restaurant]) -> Restaurant? {
        
        if let tempRestaurantOwned = restaurantOwned {
            println("Since \(self.name) own's \(tempRestaurantOwned.name), we are obviously going there.")
            println()
            return tempRestaurantOwned
        }
            
        else {
            
            var hasPreference = false
            
            if let tempCuisinePreferences = cuisinePreferences {
                
                for aRestaurant in placeToEat {
                    for preference in tempCuisinePreferences {
                        if preference == aRestaurant.cuisine {
                            println("\(self.name) would like to go to " + aRestaurant.name)
                            println()
                            return aRestaurant
                        }
                    }
                }
                
                println("\(self.name) can't find a restaurant that fits his or her preferences.")
                println()
                return nil
            }
            else
            {
                println("\(self.name) doesn't care where we go to eat.")
                println()

            }
        }
        return nil
    }
    
}