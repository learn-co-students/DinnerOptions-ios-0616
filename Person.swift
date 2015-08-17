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
            print("Since \(self.name) own's \(tempRestaurantOwned.name), we are obviously going there.")
            print("")
            return tempRestaurantOwned
        }
            
        else {
            
            if let tempCuisinePreferences = cuisinePreferences {
                
                for aRestaurant in placeToEat {
                    for preference in tempCuisinePreferences {
                        if preference == aRestaurant.cuisine {
                            print("\(self.name) would like to go to " + aRestaurant.name)
                            print("")
                            return aRestaurant
                        }
                    }
                }
                
                print("\(self.name) can't find a restaurant that fits his or her preferences.")
                print("")
                return nil
            }
            else
            {
                print("\(self.name) doesn't care where we go to eat.")
                print("")

            }
        }
        return nil
    }
    
}