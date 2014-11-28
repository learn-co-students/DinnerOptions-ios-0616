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
    
    x   
    init(name: String, cuisine: String, owner: Person) {
        self.name = name
        self.cuisine = cuisine
        self.owner = owner

    }
    
    func make(Order: [MenuItem]) {
        
        for menuItem in Order {
            for (ingredient, amount) in menuItem.recipe {
                
                if var tempSupply = supplies[ingredient] {

                    if tempSupply - amount < 0 {
                        supplies.removeValueForKey(ingredient)
                    }
                    else {
                        tempSupply -= amount
                        supplies[ingredient] = tempSupply
                    }
                }
            }
        }
    }
    
    
    func place(order : [String], tableNumber:Int) {
        
        var tableOrder = [MenuItem]()
        
        for myFood in order {
            if let tempMenu = menu {
                for (item,price) in tempMenu {
                    if (item.name == myFood) {
                        tableOrder.append(item)
                    }
                }
            }
        }
        
        orders[tableNumber] = tableOrder;
    }
    
    func serve(table : Int) {
        if let order = orders[table] {
            for item in order {
                println(item.name)
            }
            
        }
    }
}
