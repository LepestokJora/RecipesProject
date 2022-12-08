//
//  RecipDetailsViewController.swift
//  RecipesProject
//
//  Created by Irunchik on 6.12.22.
//

import UIKit

class RecipDetailsViewController: UIViewController {
    
    @IBOutlet var recipeCoverImageView: UIImageView!
    @IBOutlet var recipeTitleLabel: UILabel!
    @IBOutlet var recipeDescriptionLabel: UILabel!
    
    var recip: Recipe!

    override func viewDidLoad() {
        super.viewDidLoad()
        recipeCoverImageView.image = UIImage(named: recip.image)
        recipeTitleLabel.text = recip.title
        recipeDescriptionLabel.text = recip.description
        view.backgroundColor = .systemBrown
    }





}
