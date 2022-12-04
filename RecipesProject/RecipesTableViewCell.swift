//
//  RecipesTableViewCell.swift
//  RecipesProject
//
//  Created by Lepestok Jora on 04.12.2022.
//

import UIKit

class RecipesTableViewCell: UITableViewCell {

    @IBOutlet weak var imageIV: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imageIV.layer.cornerRadius = 25
        imageIV.clipsToBounds = true
        
    }
    
}
