//
//  MenuItem.swift
//  DinnerOptions
//
//  Created by Madina Ibrahim on 10/7/16.
//  Copyright © 2016 Zachary Drossman. All rights reserved.
//
import Foundation
import UIKit
class MenuItem {
    
    var name: String 
    var recipe: [String:Int]
    
    init(name: String, recipe: [String:Int]) {
        self.name = name
        self.recipe = recipe
    }
}

/*
 PART 1
 Create a MenuItem class which has the following properties:
 1) a name, which can change and is a string
 2) a recipe, which is really just a dictionary of ingredients (strings) as keys and the associated amount of that ingredient needed as values (ints).
 Neither the name or recipe for a MenuItem can ever be nil.
 Write a designated initializer for a MenuItem.
 */