//
//  SampleData.swift
//  JuicedUp
//
//  Created by Richard Crichlow on 3/22/23.
//

import Foundation

struct SampleData {
   static let restaurants = [
        Restaurant(name: "Cafe Paris", address: "123 Main St", rating: 4.5, imageURL: "cafe-1", menu: [
            MenuItem(name: "Croissant", description: "A flaky pastry filled with butter", price: 2.50, quantity: 7, imageURL: "coffee-1"),
            MenuItem(name: "Quiche Lorraine", description: "A savory pastry with bacon, cheese, and egg custard", price: 9.99, quantity: 3, imageURL: "coffee-2"),
            MenuItem(name: "Salad Nicoise", description: "A salad made with tuna, olives, tomatoes, and green beans", price: 12.50, quantity: 1, imageURL: "coffee-3")
        ], cuisine: .american),
        Restaurant(name: "Pizza Palace", address: "456 Elm St", rating: 4.0, imageURL: "cafe-2", menu: [
            MenuItem(name: "Pepperoni Pizza", description: "A classic pizza topped with pepperoni and mozzarella cheese", price: 15.99, quantity: 11, imageURL: "coffee-4"),
            MenuItem(name: "Margherita Pizza", description: "A pizza with tomato sauce, fresh mozzarella, and basil", price: 12.99, quantity: 3, imageURL: "coffee-5"),
            MenuItem(name: "Garlic Knots", description: "Bite-sized knots of pizza dough topped with garlic and parmesan cheese", price: 4.50, quantity: 5, imageURL: "coffee-6")
        ], cuisine: .chinese),
        Restaurant(name: "Sushi Spot", address: "789 Oak St", rating: 4.8, imageURL: "cafe-3", menu: [
            MenuItem(name: "California Roll", description: "A sushi roll with avocado, crab meat, and cucumber", price: 9.50, quantity: 8, imageURL: "coffee-7"),
            MenuItem(name: "Spicy Tuna Roll", description: "A sushi roll with tuna, spicy mayo, and cucumber", price: 12.99, quantity: 7, imageURL: "coffee-8"),
            MenuItem(name: "Miso Soup", description: "A traditional Japanese soup made with miso paste and tofu", price: 3.50, quantity: 8, imageURL: "coffee-9")
        ], cuisine: .chinese),
        Restaurant(name: "Cafe Paris", address: "123 Main St", rating: 4.5, imageURL: "cafe-1", menu: [
            MenuItem(name: "Croissant", description: "A flaky pastry filled with butter", price: 2.50, quantity: 6, imageURL: "coffee-1"),
            MenuItem(name: "Quiche Lorraine", description: "A savory pastry with bacon, cheese, and egg custard", price: 9.99, quantity: 7, imageURL: "coffee-2"),
            MenuItem(name: "Salad Nicoise", description: "A salad made with tuna, olives, tomatoes, and green beans", price: 12.50, quantity: 7, imageURL: "coffee-3")
        ], cuisine: .costaRican),
        Restaurant(name: "Pizza Palace", address: "456 Elm St", rating: 4.0, imageURL: "cafe-2", menu: [
            MenuItem(name: "Pepperoni Pizza", description: "A classic pizza topped with pepperoni and mozzarella cheese", price: 15.99, quantity: 77, imageURL: "coffee-4"),
            MenuItem(name: "Margherita Pizza", description: "A pizza with tomato sauce, fresh mozzarella, and basil", price: 12.99, quantity: 77, imageURL: "coffee-5"),
            MenuItem(name: "Garlic Knots", description: "Bite-sized knots of pizza dough topped with garlic and parmesan cheese", price: 4.50, quantity: 77, imageURL: "coffee-6")
        ], cuisine: .indian),
        Restaurant(name: "Sushi Spot", address: "789 Oak St", rating: 4.8, imageURL: "cafe-3", menu: [
            MenuItem(name: "California Roll", description: "A sushi roll with avocado, crab meat, and cucumber", price: 9.50, quantity: 5, imageURL: "coffee-7"),
            MenuItem(name: "Spicy Tuna Roll", description: "A sushi roll with tuna, spicy mayo, and cucumber", price: 12.99, quantity: 4, imageURL: "coffee-8"),
            MenuItem(name: "Miso Soup", description: "A traditional Japanese soup made with miso paste and tofu", price: 3.50, quantity: 1, imageURL: "coffee-9")
        ], cuisine: .vietnamese)
    ]
    
   static let orders = [
        Order(restaurant: restaurants[0], items: [restaurants[0].menu[0], restaurants[0].menu[2]], totalPrice: 15.00, date: Date()),
        Order(restaurant: restaurants[1], items: [restaurants[1].menu[1], restaurants[1].menu[2]], totalPrice: 17.49, date: Date()),
        Order(restaurant: restaurants[2], items: [restaurants[2].menu[0], restaurants[2].menu[1], restaurants[2].menu[2]], totalPrice: 25.99, date: Date())
    ]
    
    static let foodCategories: [FoodCategory] = [
        FoodCategory(cuisineType: .italian, imageName: "italian"),
        FoodCategory(cuisineType: .chinese, imageName: "chinese"),
        FoodCategory(cuisineType: .indian, imageName: "indian"),
        FoodCategory(cuisineType: .mexican, imageName: "mexican"),
        FoodCategory(cuisineType: .japanese, imageName: "japanese"),
        FoodCategory(cuisineType: .greek, imageName: "greek"),
        FoodCategory(cuisineType: .french, imageName: "french"),
        FoodCategory(cuisineType: .thai, imageName: "thai"),
        FoodCategory(cuisineType: .spanish, imageName: "spanish"),
        FoodCategory(cuisineType: .korean, imageName: "korean"),
        FoodCategory(cuisineType: .american, imageName: "american"),
        FoodCategory(cuisineType: .brazilian, imageName: "brazilian"),
        FoodCategory(cuisineType: .lebanese, imageName: "lebanese"),
        FoodCategory(cuisineType: .vietnamese, imageName: "vietnamese"),
        FoodCategory(cuisineType: .turkish, imageName: "turkish"),
        FoodCategory(cuisineType: .moroccan, imageName: "moroccan"),
        FoodCategory(cuisineType: .ethiopian, imageName: "ethiopian"),
        FoodCategory(cuisineType: .jamaican, imageName: "jamaican"),
        FoodCategory(cuisineType: .peruvian, imageName: "peruvian"),
        FoodCategory(cuisineType: .costaRican, imageName: "costa-rican")
    ]

    
}
