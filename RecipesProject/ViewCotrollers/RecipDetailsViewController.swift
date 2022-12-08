//
//  RecipDetailsViewController.swift
//  RecipesProject
//
//  Created by Irunchik on 6.12.22.
//

import UIKit

class RecipDetailsViewController: UIViewController {
    
    var recip: MyRecipes!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = recip.title
        view.backgroundColor = .systemBrown

        
    }
    


}
