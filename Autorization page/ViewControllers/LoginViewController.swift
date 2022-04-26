//
//  ViewController.swift
//  Autorization page
//
//  Created by Павел on 20.04.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.delegate = self
        passwordField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabController = segue.destination as? TabBarViewController else {return}        
        tabController.user = user
        
    }
    
    @IBAction func forgotNameButton() {
        showAlert(title: "OOOps!", message: "You name is \(user.name)", titleButton: "Thanks")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "OOOps!", message: "You password is \(user.password)", titleButton: "Thanks")
    }
    
    @IBAction func logInButtonPressed() {
        logIn()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == userNameField {
            passwordField.becomeFirstResponder()
        }else {
            logIn()
        }
        
        return true
    }
    
    private func showAlert(title: String, message: String, titleButton: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttonController = UIAlertAction(title: titleButton, style: .default)
        alertController.addAction(buttonController)
        
        present(alertController, animated: true)
    }
    
    private func logIn() {
        
        let enteredUserName = userNameField.text ?? ""
        let enteredPassword = passwordField.text ?? ""
        
        if enteredUserName != user.name || enteredPassword != user.password {
            showAlert(title: "Invalid login or password",
                      message: "Please enter correct login and password",
                      titleButton: "Ok")
            return
        }
               
        performSegue(withIdentifier: "seguesToWelcome", sender: nil)
    }
}

