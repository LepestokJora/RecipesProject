//
//  ReceipeDetailsViewController.swift
//  RecipesProject
//
//  Created by Илья Морин on 05.12.2022.
//

import UIKit

class RecipeDetailsViewController: UIViewController {

    @IBOutlet var recipeCoverImageView: UIImageView!
    
    @IBOutlet var recipeTitleLabel: UILabel!
    
    var myRecipe: Recipe!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeCoverImageView.image = UIImage(named: myRecipe.imageName)
        recipeTitleLabel.text = myRecipe.description
        

    }

}
