//
//  HomePageView.swift
//  JuicedUp
//
//  Created by Richard Crichlow on 3/22/23.
//

import SwiftUI

struct UberEatsHomepageView: View {
    
    let restaurants = SampleData.restaurants
    
    let orders = SampleData.orders
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                SearchBarView()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text("Restaurants near you")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(restaurants) { restaurant in
                            RestaurantCardView(restaurant: restaurant)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                FoodCategoriesView()
                
                FeaturedRestaurantsView()
                
                PopularDishesView()
                
                Text("Your Orders")
                    .font(.headline)
                    .padding(.horizontal)
                
                ForEach(orders) { order in
                    OrderCardView(order: order)
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
    }
}

struct SearchBarView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search for a restaurant or cuisine", text: $searchText)
                .font(.body)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
    }
}

struct FeaturedRestaurantsView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured Restaurants")
                .font(.headline)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(SampleData.restaurants) { restaurant in
                        RestaurantCardView(restaurant: restaurant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct RestaurantCardView: View {
    let restaurant: Restaurant
    var body: some View {
        VStack(alignment: .leading) {
            Image(restaurant.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            Text(restaurant.name)
                .font(.subheadline)
                .foregroundColor(.primary)
            Text(restaurant.cuisine.rawValue)
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(width: 150)
    }
}

struct PopularDishesView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Popular Dishes")
                .font(.headline)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0..<4) { index in
                        PopularDishCardView()
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PopularDishCardView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("dish\(Int.random(in: 1...3))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            Text("Dish Name")
                .font(.subheadline)
                .foregroundColor(.primary)
            Text("Restaurant Name")
                .font(.caption)
                .foregroundColor(.secondary)
        }
        .frame(width: 150)
    }
}

struct FoodCategoriesView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Food Categories")
                .font(.headline)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(SampleData.foodCategories) { food in
                        FoodCategoryCardView(foodCategory: food)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct FoodCategoryCardView: View {
    let foodCategory: FoodCategory
    
    var body: some View {
        VStack {
            Image(foodCategory.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            Text(foodCategory.cuisineType.rawValue)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .frame(width: 80)
    }
}




struct UberEatsHomepageView_Previews: PreviewProvider {
    static var previews: some View {
        UberEatsHomepageView()
    }
}
