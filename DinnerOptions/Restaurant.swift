//
//  Restaurant.swift
//  DinnerOptions
//
//  Created by Madina Ibrahim on 10/7/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//

import Foundation
import UIKit

/*
 PART 2
 Create a Restaurant class which has the following properties:
 1) the name of the restaurant, a string
 2) the cuisine of the restaurant, a string
 3) the supplies on hand at the restaurant, which is a Dictionary of ingredients (strings) as keys and their amounts as values (ints)
 4) the owner of the restaurant, which is a Person object(we'll create the person class in step 3)
 5) the menu for the restaurant, an array of menu items
 6) the restaurants current list of orders, which even if there are none should exist. This is a dictionary where the key is the table number and the value is an array of MenuItem objects.
 Only the menu of the restaurant can ever be nil, since some restaurants don't have menus.
 */

class Restaurant {
    
    var name: String
    var cuisine: String
    var supplies = [String:Int]?() // [ingredients:amounts].
    var owner: Person
    var menu: [String]?   // only menu could be nill
    var orders: [Int:[MenuItem]]? // the restaurants current list of orders, which even if there are none should exist.
    
    //  This is a dictionary where the key is the table number and the value is an array of MenuItem objects.  Only the menu of the restaurant can ever be nil, since some restaurants don't have menus.
    
    //    Now write methods that do the following:
    //    1) An initializer that includes the name of the restaurant, its cuisine, and its owner.
    init(name: String, cuisine: String, owner: Person) {
        self.name = name
        self.cuisine = cuisine
        self.owner = owner
    }
    /*
     2) Place an order. This method should take an array of string objects (the order as given by the customer) and a tableNumber and add the completed order to the orders property. It should only add to the order if what was requested is on the restaurant's menu.
     */
    func placeAnOrder(order: [String], tableNumber: Int) {
        var acceptedOrder: [String] = []
        
        for eachOrder in order {
            if let menu = menu {
                if menu.contains(eachOrder) {
                    acceptedOrder.append(eachOrder)
                    print("The table \(tableNumber) order \(eachOrder) have been placed")
                } else {
                    print("Sorry the \(eachOrder) is not available")
                }
            }
        }
        
    }
}


//        func makeAnOrder(tableNumber: Int, order:[String]) -> [MenuItem] {
// if all supplyes for ingredients are avalible
//            }

/*
 
 3) Make an order. This method should take a table number as an argument.
 
 It should look for the associated order placed for that table in the orders dictionary,
 
 and return the completed order (an array of menuItem objects), assuming that the restaurant has all of the necessary ingredients on hand to make the order.
 
 If the restaurant does not have the necessary amount of ingredients on hand to cook a specific menuItem ordered, it should return a partially completed order,
 
 and print in our console the menuItem objects for which it did not have the full ingredients on hand to make.*/

