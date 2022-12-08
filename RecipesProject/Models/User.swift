//
//  Recipes.swift
//  RecipesProject
//
//  Created by Irunchik on 6.12.22.
//



struct User {
    let login: String
    let password: String
    var myRecipes = DataManager.shared.recipeArry
    
    static func getUserData() -> User {
        User(login: "User", password: "1234")
    }
    
}
struct Recipe{
    
    let image: String
    let title: String
    let description: String
    
}


