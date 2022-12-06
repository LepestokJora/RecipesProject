//
//  RecipesTableViewController.swift
//  RecipesProject
//
//  Created by Lepestok Jora on 03.12.2022.
//

import UIKit


class RecipesTableViewController: UITableViewController {
    
    
    private var recipeList = Recipe.getRecipeList()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
 
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1   }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataManager.shared.recipeArry.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? RecipesTableViewCell{
            
            cell.titleLabel.text = DataManager.shared.recipeArry[indexPath.row].title
            cell.descriptionLabel.text = DataManager.shared.recipeArry[indexPath.row].description
            cell.imageIV.image = DataManager.shared.recipeArry[indexPath.row].image
            
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "siteSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if let detailViewController = segue.destination as? ........... {
        // detailViewController.person = selectPerson
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailsVC = segue.destination as? RecipeDetailsViewController else {return}
        detailsVC.myRecipe = recipeList[indexPath.row]

        print ("\(String(describing: segue.identifier))")
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        return 130
    }

    
    
    
    
    
    
   /*
    (CGFloat);tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
    {
        CGFloat height = 0.0;
        if (isRowHidden) {
            height = 0.0;
        } else {
            height = 44.0;
        }
        return height;
    }
    
    */
    
    

}
    
    
    
    
    
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
