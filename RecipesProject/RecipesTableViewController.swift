//
//  RecipesTableViewController.swift
//  RecipesProject
//
//  Created by Lepestok Jora on 03.12.2022.
//

import UIKit

struct MyTestRecipes{
    
    let image: UIImage
    let title: String
    let description: String
    
}

class RecipesTableViewController: UITableViewController {
    
    
    
    let myTest: [MyTestRecipes] = [MyTestRecipes(image:UIImage(named: "sm_236710")!,
                                                 title:"Паста Карбонара",
                                                 description: "спагетти, грудинка, яйцо куриное, желток, сыр пармезан, масло сливочное, масло оливковое, чеснок, соль, перец чёрный"),
                                   MyTestRecipes(image:UIImage(named: "sm_174367")!,
                                                 title: "Пицца",
                                                 description: "яйца, майонез, мука, соль, колбаса, сыр, помидоры, огурцы солёные, лук репчатый, чеснок, кетчуп"),
                                   
                                   MyTestRecipes(image:UIImage(named: "sm_265013")!,
                                                 title: "Корн-доги",
                                                 description: "сосиски, яйца, мука пшеничная, мука кукурузная, разрыхлитель, молоко, соль, сахар, масло растительное")
                                   
                                   
                                   
                                   
                                   
    ]
    
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
        return myTest.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as? RecipesTableViewCell{
            
            cell.titleLabel.text = myTest[indexPath.row].title
            cell.descriptionLabel.text = myTest[indexPath.row].description
            cell.imageIV.image = myTest[indexPath.row].image
            
            return cell
        }
        
        return UITableViewCell()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "SiteSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if let detailViewController = segue.destination as? ........... {
        // detailViewController.person = selectPerson
        print ("\(segue.identifier)")
        
    }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



