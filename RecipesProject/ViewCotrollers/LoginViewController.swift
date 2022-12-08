//
//  LoginViewController.swift
//  RecipesProject
//
//  Created by Irunchik on 3.12.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet weak var startBatton: UIButton!
    @IBOutlet weak var forgotUserButton: UIButton!
    @IBOutlet weak var forgotPassButton: UIButton!

    
    private let user = User.getUserData()
    override func viewDidLoad() {
        startBatton.layer.cornerRadius = 10
        forgotUserButton.layer.cornerRadius = 10
        forgotPassButton.layer.cornerRadius = 10
    }

    
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {return}
       
       guard let tabBarController = navigationVC.topViewController as? UITabBarController else {return}
     //   guard let tabBarController = segue.destination as? UITabBarController else {return}
       
      guard let viewControllers = tabBarController.viewControllers  else { return }
       viewControllers.forEach {
//        if let navigationVC = $0 as? UINavigationController {
//               guard let recipesTableVC = navigationVC.topViewController as? RecipesTableViewController else {return}
//               recipesTableVC.user = user
        //   }
           if let recipesTableVC = $0  as? RecipesTableViewController {
               recipesTableVC.user = user
           }
           else if let listVC = $0 as? ListViewController{
               listVC.user = user
           }
           
       }

    }

    
    @IBAction func loginButtonAction() {
        guard userTextField.text == user.login, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
       performSegue(withIdentifier: "showRecipes", sender: nil)
    }
        
    @IBAction func forgotButtonAction(_ sender: UIButton) {
            sender.tag == 1
        ? showAlert(title: "Oops!", message: "Your name is \(user.login) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
            
        }
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
        
        
    
}
    
extension LoginViewController {
    private func showAlert (title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
