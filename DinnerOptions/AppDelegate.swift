//
//  AppDelegate.swift
//  DinnerOptions
//
//  Created by Zachary Drossman on 11/24/14.
//  Copyright (c) 2014 Zachary Drossman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let restaurant1 = Restaurant(name: "Madina", cuisine: "Italian", owner: Person.init(name: ["madina", "Susan", "Bettina"]))
    let person1 = Person.init(name:["madina", "Susan", "Bettina"])
    
    //let restaurant2 = Restaurant(name: "Flatiron", cuisine: "Chinese", owner: Person.init(name: ["Joe"]))
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        restaurant1.placeAnOrder(["Salad", "Soup", "Bread", "Grilled Cheese", "Falafel on Rice", "Vegetable Soup", "Tuna on Toast", "Pea Soup", "Salad"], tableNumber: 3)
        
        //restaurant2.placeAnOrder(<#T##order: [String]##[String]#>, tableNumber: <#T##Int#>)
//        var table10Order = ["Pea Soup", "Pea Soup", "Pea Soup", "Pea Soup", "Grilled Cheese", "Tuna on Toast"]
//        
//        var table5Order = ["Vegetable Soup", "Vegetable Soup", "Grilled Cheese"]
//        
//        var table2Order = ["Grilled Cheese", "Grilled Cheese"]
//        
//        var table3Order = ["Grilled Cheese", "Vegetable Soup", "Vegetable Soup", "Vegetable Soup"]
//        
        
        return true
    }

//    func generateTestData() {
//        
//        var alice = Person(name: "Alice", cuisinePreferences: ["French", "Italian", "American"])
//        
//        var grilledCheese = MenuItem(name: "Grilled Cheese", recipe: ["Cheese" : 2, "Bread": 2])
//        var vegetableSoup = MenuItem(name: "Vegetable Soup", recipe: ["Beefstake Tomato" : 2, "White Onion" : 1, "8 oz can lima beans" : 1, "Idaho Potato": 1, "Garlic clove": 1])
//        var alicesMenu = [grilledCheese: 8.99, vegetableSoup: 4.99]
//        
//        let alicesRestaurant = Restaurant(name: "Alice's Restaurant", cuisine: "American", owner: alice)
//        
//        alicesRestaurant.supplies = ["Cheese": 10, "Bread": 7, "Beefstake Tomato": 9, "White Onion" : 3, "8 oz can lima beans" : 3, "Idaho Potato" : 10, "Garlic clove" : 16];
//        alice.restaurantOwned = alicesRestaurant
//        alicesRestaurant.menu = alicesMenu
//        
//        var tom = Person(name: "Tom")
//        
//        var tunaSandwich = MenuItem(name: "Tuna on Toast", recipe: ["Tuna": 1, "Bread" : 2, "Lettuce" : 2])
//        
//        var peaSoup = MenuItem(name: "Pea Soup", recipe: ["Peas": 1, "Soup" : 2])
//        
//        let tomsRestaurant = Restaurant(name: "Tom's Restaurant", cuisine: "Coffee", owner: tom)
//        
//        tom.restaurantOwned = tomsRestaurant
//        var tomsMenu = [tunaSandwich: 10.99, peaSoup: 5.99]
//        
//        tomsRestaurant.menu = tomsMenu
//        
//        tomsRestaurant.supplies = ["Tuna" : 3, "Bread" : 12, "Lettuce": 4, "Peas" : 5, "Soup" : 11]
//        
//        var george = Person(name: "George", cuisinePreferences: ["Coffee", "American"])
//        
//        var jerry = Person(name: "Jerry", cuisinePreferences: ["French", "American"])
//        
//        var elaine = Person(name: "Elaine", cuisinePreferences: ["Spanish", "French"])
//        
//        var newman = Person(name: "Newman")
//        
//        self.people = [elaine, jerry, george, tom, alice, newman]
//        self.restaurants = [tomsRestaurant, alicesRestaurant]
//        
//    }

}

