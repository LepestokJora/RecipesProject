//
//  Recipe.swift
//  RecipesProject
//
//  Created by Илья Морин on 05.12.2022.
//

struct Recipe {
    let title: String
    let discription: String
    
    var photoTitle: String {
        "\(title)"
    }
}

extension Recipe {
    static func getRecipesList() -> [Recipe] {
        
    }
    
}
