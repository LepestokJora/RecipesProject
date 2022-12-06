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
    
    private let user = "User"
    private let password =  "1234"
    
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
// надо ли что то передавать с экрана логин????
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else {return}
//
//    }

    
    @IBAction func loginButtonAction() {
        guard userTextField.text == user, passwordTextField.text == password else {
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
            ? showAlert(title: "Oops!", message: "Your name is \(user) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(password) 😉")
            
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
