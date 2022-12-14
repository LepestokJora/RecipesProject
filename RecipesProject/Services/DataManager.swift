//
//  Data Manager2.swift
//  RecipesProject
//
//  Created by Lepestok Jora on 04.12.2022.
//

import UIKit

class DataManager {
    
    static let shared = DataManager()

    let recipeArry: [Recipe] = [Recipe(image: "1",
                                                 title:"РОЖДЕСТВЕНСКИЙ ШТОЛЛЕН",
                                                 description: "В Германии без штоллена не Рождество! Узнай, почему немцы его любят!"),
                                   Recipe(image: "2",
                                                 title: "КЛАССИЧЕСКИЕ СЫРНИКИ ИЗ ТВОРОГА",
                                                 description: "Классический рецепт пышных, нежных сырников! Пышные сырники приготовить не так то и просто! "),
                                   
                                   Recipe(image:"3",
                                                 title: "ПЫШНЫЕ СЫРНИКИ ИЗ ТВОРОГА С МУКОЙ",
                                                 description: "Пышные и воздушные домашние сырники на завтрак! Сырники - это прекрасный вариант вкусного и сытного завтрака или полдника. "),
                                   
                                   Recipe(image:"prostaya-sharlotka",
                                                 title: "ПРОСТАЯ ШАРЛОТКА С ЯБЛОКАМИ",
                                                 description: "Вкуснейшая, простая, самая лучшая выпечка для всей семьи! Пышная шарлотка с яблоками понравится вам с первого раза."),
                                   
                                   Recipe(image: "pyshnaya-tvorojnaya-zapekanka",
                                                 title: "ПЫШНАЯ ТВОРОЖНАЯ ЗАПЕКАНКА",
                                                 description: "Легкая, воздушная, тающая во рту запеканка! В этом рецепте я раскрою секреты самой вкусной творожной запеканки с манкой."),
                                   
                                   Recipe(image: "bliny-na-moloke-tonkie-s-dyrochkami",
                                                 title: "БЛИНЫ НА МОЛОКЕ ТОНКИЕ С ДЫРОЧКАМИ",
                                                 description: "сосиски, яйца, мука пшеничная, мука кукурузная, разрыхлитель, молоко, соль, сахар, масло растительное"),
                                   
                                   Recipe(image:"bliny-obychnye",
                                                 title: "БЛИНЫ НА КЕФИРЕ",
                                                 description: "Бесподобно вкусно, очень просто и дешево, на каждый день!"),
                                   
                                   Recipe(image: "blinov-s-dyrochkami-s-kipyatkom",
                                                 title: "БЛИНЫ С ДЫРОЧКАМИ",
                                                 description: "Ажурная выпечка на кипятке сразу привлечет к себе внимание!"),
                                   
                                   Recipe(image:"kartofelnje-draniki",
                                                 title: "ДРАНИКИ КАРТОФЕЛЬНЫЕ",
                                                 description: " Ну кто же не знает такое популярное блюдо из картофеля, как драники?! "),
                                   
                                   Recipe(image:"xleb-v-skovorodke",
                                                 title: "ДОМАШНИЙ ХЛЕБ",
                                                 description: "Простой, быстрый, доступный всем способ на каждый день! "),
                                   
                                   Recipe(image: "pankeiki-na-moloke",
                                                 title: "ПАНКЕЙКИ НА МОЛОКЕ",
                                                 description: "Пробуй лучший рецепт панкейков - идеальный завтрак! "),
                                   
                                   Recipe(image: "pyshnye-oladi-na-drojjax-i-moloke",
                                                 title: "ПЫШНЫЕ ОЛАДЬИ НА ДРОЖЖАХ",
                                                 description: "Вкусные и аппетитные! Просто и очень вкусно!")
                                   
    ]



    private init() {}
    
    
    
}
