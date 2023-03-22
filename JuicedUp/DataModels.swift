//
//  DataModels.swift
//  JuicedUp
//
//  Created by Richard Crichlow on 3/22/23.
//

import Foundation

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let rating: Double
    let imageURL: URL?
    let menu: [MenuItem]
}

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let imageURL: URL?
}

struct Order: Identifiable {
    let id = UUID()
    let restaurant: Restaurant
    let items: [MenuItem]
    let totalPrice: Double
    let date: Date
}

let restaurants = [
    Restaurant(name: "Cafe Paris", address: "123 Main St", rating: 4.5, imageURL: URL(string: "https://via.placeholder.com/150"), menu: [
        MenuItem(name: "Croissant", description: "A flaky pastry filled with butter", price: 2.50, imageURL: URL(string: "https://via.placeholder.com/150")),
        MenuItem(name: "Quiche Lorraine", description: "A savory pastry with bacon, cheese, and egg custard", price: 9.99, imageURL: URL(string: "https://via.placeholder.com/150")),
        MenuItem(name: "Salad Nicoise", description: "A salad made with tuna, olives, tomatoes, and green beans", price: 12.50, imageURL: URL(string: "https://via.placeholder.com/150"))
    ]),
    Restaurant(name: "Pizza Palace", address: "456 Elm St", rating: 4.0, imageURL: URL(string: "https://via.placeholder.com/150"), menu: [
        MenuItem(name: "Pepperoni Pizza", description: "A classic pizza topped with pepperoni and mozzarella cheese", price: 15.99, imageURL: URL(string: "https://via.placeholder.com/150")),
        MenuItem(name: "Margherita Pizza", description: "A pizza with tomato sauce, fresh mozzarella, and basil", price: 12.99, imageURL: URL(string: "https://via.placeholder.com/150")),
        MenuItem(name: "Garlic Knots", description: "Bite-sized knots of pizza dough topped with garlic and parmesan cheese", price: 4.50, imageURL: URL(string: "https://via.placeholder.com/150"))
    ]),
    Restaurant(name: "Sushi Spot", address: "789 Oak St", rating: 4.8, imageURL: URL(string: "https://via.placeholder.com/150"), menu: [
        MenuItem(name: "California Roll", description: "A sushi roll with avocado, crab meat, and cucumber", price: 9.50, imageURL: URL(string: "https://via.placeholder.com/150")),
        MenuItem(name: "Spicy Tuna Roll", description: "A sushi roll with tuna, spicy mayo, and cucumber", price: 12.99, imageURL: URL(string: "https://via.placeholder.com/150")),
        MenuItem(name: "Miso Soup", description: "A traditional Japanese soup made with miso paste and tofu", price: 3.50, imageURL: URL(string: "https://via.placeholder.com/150"))
    ])
]

let orders = [
    Order(restaurant: restaurants[0], items: [restaurants[0].menu[0], restaurants[0].menu[2]], totalPrice: 15.00, date: Date()),
    Order(restaurant: restaurants[1], items: [restaurants[1].menu[1], restaurants[1].menu[2]], totalPrice: 17.49, date: Date()),
    Order(restaurant: restaurants[2], items: [restaurants[2].menu[0], restaurants[2].menu[1], restaurants[2].menu[2]], totalPrice: 25.99, date: Date())
]
