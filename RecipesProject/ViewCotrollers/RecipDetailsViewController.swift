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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
