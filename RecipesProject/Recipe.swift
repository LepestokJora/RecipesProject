//
//  Receipe.swift
//  RecipesProject
//
//  Created by Илья Морин on 05.12.2022.
//

import UIKit

struct Recipe {
    let image: UIImage
    let imageName: String
    let recipeName: String
    let description: String
}

extension Recipe {
    static func getRecipeList() -> [Recipe] {
        [Recipe(image:UIImage(named: "1")!,
                 imageName: "1",
                 recipeName:"РОЖДЕСТВЕНСКИЙ ШТОЛЛЕН",
                 description: "В Германии без штоллена не Рождество! Узнай, почему немцы его любят!"),
         Recipe(image:UIImage(named: "2")!,
                 imageName: "2",
                 recipeName: "КЛАССИЧЕСКИЕ СЫРНИКИ ИЗ ТВОРОГА",
                 description: "Классический рецепт пышных, нежных сырников! Пышные сырники приготовить не так то и просто! "),
   
                                                     
         Recipe(image:UIImage(named: "3")!,
                 imageName: "3",
                 recipeName: "ПЫШНЫЕ СЫРНИКИ ИЗ ТВОРОГА С МУКОЙ",
                 description: "Пышные и воздушные домашние сырники на завтрак! Сырники - это прекрасный вариант вкусного и сытного завтрака или полдника. "),
   
         Recipe(image:UIImage(named: "prostaya-sharlotka")!,
                 imageName: "prostaya-sharlotka",
                 recipeName: "ПРОСТАЯ ШАРЛОТКА С ЯБЛОКАМИ",
                 description: "Вкуснейшая, простая, самая лучшая выпечка для всей семьи! Пышная шарлотка с яблоками понравится вам с первого раза."),
   
                                                     
         Recipe(image:UIImage(named: "pyshnaya-tvorojnaya-zapekanka")!,
                 imageName: "pyshnaya-tvorojnaya-zapekanka",
                 recipeName: "ПЫШНАЯ ТВОРОЖНАЯ ЗАПЕКАНКА",
                 description: "Легкая, воздушная, тающая во рту запеканка! В этом рецепте я раскрою секреты самой вкусной творожной запеканки с манкой."),
                                       
         Recipe(image:UIImage(named: "bliny-na-moloke-tonkie-s-dyrochkami")!,
                 imageName: "bliny-na-moloke-tonkie-s-dyrochkami",
                 recipeName: "БЛИНЫ НА МОЛОКЕ ТОНКИЕ С ДЫРОЧКАМИ",
                 description: "сосиски, яйца, мука пшеничная, мука кукурузная, разрыхлитель, молоко, соль, сахар, масло растительное"),
                                                     
                                       
         Recipe(image:UIImage(named: "bliny-obychnye")!,
                 imageName: "bliny-obychnye",
                 recipeName: "БЛИНЫ НА КЕФИРЕ",
                 description: "Бесподобно вкусно, очень просто и дешево, на каждый день!"),
                                       
         Recipe(image:UIImage(named: "blinov-s-dyrochkami-s-kipyatkom")!,
                 imageName: "blinov-s-dyrochkami-s-kipyatkom",
                 recipeName: "БЛИНЫ С ДЫРОЧКАМИ",
                 description: "Ажурная выпечка на кипятке сразу привлечет к себе внимание!"),
                                                     
                                       
         Recipe(image:UIImage(named: "kartofelnje-draniki")!,
                 imageName: "kartofelnje-draniki",
                 recipeName: "ДРАНИКИ КАРТОФЕЛЬНЫЕ",
                 description: " Ну кто же не знает такое популярное блюдо из картофеля, как драники?! "),
                                                     
                                       
         Recipe(image:UIImage(named: "xleb-v-skovorodke")!,
                 imageName: "xleb-v-skovorodke",
                 recipeName: "ДОМАШНИЙ ХЛЕБ",
                 description: "Простой, быстрый, доступный всем способ на каждый день! "),
   
                                                     
         Recipe(image:UIImage(named: "pankeiki-na-moloke")!,
                 imageName: "pankeiki-na-moloke",
                 recipeName: "ПАНКЕЙКИ НА МОЛОКЕ",
                 description: "Пробуй лучший рецепт панкейков - идеальный завтрак! "),
                                                     
                                       
         Recipe(image:UIImage(named: "pyshnye-oladi-na-drojjax-i-moloke")!,
                 imageName: "pyshnye-oladi-na-drojjax-i-moloke",
                 recipeName: "ПЫШНЫЕ ОЛАДЬИ НА ДРОЖЖАХ",
                 description: "Вкусные и аппетитные! Просто и очень вкусно!")
                                                     
                                       
        ]
    }
}

