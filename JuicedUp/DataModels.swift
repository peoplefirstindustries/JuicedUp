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
    let imageURL: String
    let menu: [MenuItem]
    let cuisine: CuisineType
}

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
    let quantity: Int
    let imageURL: String
}

struct Order: Identifiable {
    let id = UUID()
    let restaurant: Restaurant
    let items: [MenuItem]
    let totalPrice: Double
    let date: Date
}

struct FoodCategory: Identifiable {
    var id = UUID()
    let cuisineType: CuisineType
    let imageName: String
}

enum CuisineType: String {
    case italian = "Italian"
    case chinese = "Chinese"
    case indian = "Indian"
    case mexican = "Mexican"
    case japanese = "Japanese"
    case greek = "Greek"
    case french = "French"
    case thai = "Thai"
    case spanish = "Spanish"
    case korean = "Korean"
    case american = "American"
    case brazilian = "Brazilian"
    case lebanese = "Lebanese"
    case vietnamese = "Vietnamese"
    case turkish = "Turkish"
    case moroccan = "Moroccan"
    case ethiopian = "Ethiopian"
    case jamaican = "Jamaican"
    case peruvian = "Peruvian"
    case costaRican = "Costa Rican"
    // add more cuisine types as needed
}

