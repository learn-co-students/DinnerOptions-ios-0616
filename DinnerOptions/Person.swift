//
//  Person.swift
//  DinnerOptions
//
//  Created by Madina Ibrahim on 10/7/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//

import Foundation
import UIKit

class Person {
    
    var name: [String]
    var cuisinePreferences: [String]
    var restaurantOwned: String?   // if person owes restorant he will go there. could be nil
    
    init(name: [String], cuisinePreferences: [String]) {
        self.name = name
        self.cuisinePreferences = cuisinePreferences
    }

    convenience init(name: [String]) { // if they have no cuisine preferences.
        
        self.init(name:name, cuisinePreferences: []) //
        
    }
    
    let noPreferencePerson = Person(name: ["Madina", "Zarema"])//instance of person with no preferences
    
    /*A function which chooses a place to eat from a list of restaurants based on the following rules:
     -- If the person owns a restaurant, they are going to go to that restaurant. In this case, the function will return that restaurant and print something along the following lines in our console:
     "Since Tom own's Tom's Restaurant, we are obviously going there."
     -- If a person has cuisine preferences, they will go to the first restaurant in the list of restaurants provided which matches one of their cuisine preferences. In this case the function will return that restaurant, and print something alone the following lines in our console:
     "George would like to go to Tom's Restaurant"
     -- If a person has cuisine preferences, but they do not match any of the restaurants in the supplied list, the function will return nil, and print something along the following lines in our console:
     "Elaine can't find a restaurant that fits his or her preferences."
     -- And if a person does not have any cuisine preferences, the function will return nil, and print something along the following lines in our console:
     "Newman doesn't care where we go to eat."*/
    
//    func choosePlaceToEat(restaurants: [String]) -> String {
//        
//    }
}

