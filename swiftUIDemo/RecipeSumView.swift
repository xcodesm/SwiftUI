////
////  nestedStructView.swift
////  swiftUIDemo
////
////  Created by Girish Lukka on 10/03/2022.
////

import SwiftUI


struct Menu: Decodable {
    let catagory: String
    let items: [Recipe]
}

struct Recipe: Decodable, Identifiable {
    var id: String { name }
    let name: String
    let totalCalories: Int
    let isFavourite: Bool
    let addedToday: Int
    let components: [RecipeComponent]
}

struct RecipeComponent: Decodable {
    let name: String
    let varietyName: String
    let varietyCalories: Int
    let totalCalories: Int
    let quantity: Int
    let unit: String
}

struct RecipeSumView: View {
    @State private var recipes: [Recipe] = []
    var totalCalories: Int {
        return recipes.reduce(0) { cals, currentItem in
            cals + currentItem.totalCalories
        }
    }
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Total Calories = \(totalCalories)")
            VStack(spacing: 20) {
                ForEach(recipes) { recipe in
                    Text(recipe.name).font(.headline)
                    Text(String(recipe.totalCalories))
                }
            }
        }
        .onAppear { loadJSON() }
    }
    
    func loadJSON() {
        if let url = Bundle.main.url(forResource: "menuJSON", withExtension: "json") {
            do {
                let jsonData = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let menu = try decoder.decode([Menu].self, from: jsonData)
                recipes = menu[0].items
            } catch {
                print(error)
            }
        }
    }

}
