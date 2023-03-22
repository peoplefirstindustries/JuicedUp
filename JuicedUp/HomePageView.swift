//
//  HomePageView.swift
//  JuicedUp
//
//  Created by Richard Crichlow on 3/22/23.
//

import SwiftUI

struct UberEatsHomepageView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    SearchBar()
                        .padding(.horizontal)
                    FeaturedRestaurantsView()
                        .padding(.top)
                    PopularDishesView()
                        .padding(.top)
                    FoodCategoriesView()
                        .padding(.top)
                }
            }
            .navigationBarTitle("Uber Eats")
        }
    }
}

struct SearchBar: View {
    
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
                    ForEach(0..<4) { index in
                        FeaturedRestaurantCardView()
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct FeaturedRestaurantCardView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Image("restaurant\(Int.random(in: 1...3))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            Text("Restaurant Name")
                .font(.subheadline)
                .foregroundColor(.primary)
            Text("Cuisine Type")
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
                    ForEach(0..<4) { index in
                        FoodCategoryCardView()
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct FoodCategoryCardView: View {
    
    var body: some View {
        VStack {
            Image("category\(Int.random(in: 1...5))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            Text("Category")
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
