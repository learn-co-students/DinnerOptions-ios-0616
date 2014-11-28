//
//  MenuItem.swift
//  DinnerOptions
//
//  Created by Zachary Drossman on 11/24/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import UIKit

class MenuItem: NSObject {
    var name = String()
    var recipe = [String:Int]()
    
    init(name: String, recipe:[String:Int]) {
        self.name = name
        self.recipe = recipe
    }
    
}
