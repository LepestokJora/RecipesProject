//
//  RecipesTableViewController.swift
//  RecipesProject
//
//  Created by Lepestok Jora on 03.12.2022.
//

import UIKit


class RecipesTableViewController: UITableViewController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.myRecipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? RecipesTableViewCell{
            
            cell.titleLabel.text = user.myRecipes[indexPath.row].title
            cell.descriptionLabel.text = user.myRecipes[indexPath.row].description
            cell.imageIV.image = UIImage(named: user.myRecipes[indexPath.row].image)
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "siteSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? RecipDetailsViewController else {return}
            detailVC.recip = user.myRecipes[indexPath.row]
            print ("\(String(describing: segue.identifier))")
            
        }
    }
        
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            return 130
        }

    
    
}
    
    
    

