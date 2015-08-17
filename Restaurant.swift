//
//  Restaurant.swift
//  DinnerOptions
//
//  Created by Zachary Drossman on 11/24/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import UIKit

class Restaurant: NSObject {

    let name : String
    let cuisine : String
    var supplies = [String:Int]()
    unowned let owner : Person
    var menu = [MenuItem:Double]?()
    var orders = [Int:[MenuItem]]()
    
    init(name: String, cuisine: String, owner: Person) {
        self.name = name
        self.cuisine = cuisine
        self.owner = owner
        
    }
    
    func makeOrderFor(table: Int) -> [MenuItem]? {
        
        var completedOrder : [MenuItem]?
        
        if let tempOrder = orders[table] {
            for menuItem in tempOrder {
                
                var completedMakingItem = true

                for (ingredient, amount) in menuItem.recipe {
                    if var tempSupply = supplies[ingredient] {
                        
                        if tempSupply - amount < 0 {
                            
                            supplies.removeValueForKey(ingredient)
                            completedMakingItem = false
                            
                        }
                        else {
                            tempSupply -= amount
                            supplies[ingredient] = tempSupply
                        }
                    }
                }
                
                if completedMakingItem {
                    
                    if var tempCompletedOrder = completedOrder {
                        tempCompletedOrder.append(menuItem)
                    }
                    else {
                        completedOrder = [MenuItem]()
                        completedOrder?.append(menuItem)
                    }
                }
               
                else {
                    print("We are all out of the ingredients to make \(menuItem.name). You may wish to order something else.")
                }
            }
        }
        
        return completedOrder
    }
    
    
    func place(order : [String], tableNumber:Int) {
        
        var tableOrder = [MenuItem]()
        
        for myFood in order {
            if let tempMenu = menu {
                
                var weServeIt = false

                for (item, _) in tempMenu {
                    if (item.name == myFood) {
                        tableOrder.append(item)
                        weServeIt = true
                    }
                }
                
                if weServeIt == false {
                    print("Sorry, we don't serve \(myFood)")
                }
            }
        }
        
        orders[tableNumber] = tableOrder;
    }
    
}
