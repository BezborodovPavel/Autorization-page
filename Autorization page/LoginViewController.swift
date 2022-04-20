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
    
    private let userName = "User"
    private let password = "123" //Вот за такое хранение паролей,точно уволили бы сразу :)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.delegate = self
        passwordField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        return false
//    }
    
    @IBAction func forgotNameButton() {
        showAlert(title: "OOOps!", message: "You name is \(userName)", titleButton: "Thanks")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "OOOps!", message: "You password is \(password)", titleButton: "Thanks")
    }
    
    //    @IBAction func logInButtonPressed() {
    //        logIn()
    //    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == userNameField {
            passwordField.becomeFirstResponder()
        }else if textField == passwordField {
            passwordField.resignFirstResponder()
            logIn()
        }
        
        return true // не уверен что так правильно возвращать всегда true, но надо же что-то вернуть
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
        
        if enteredUserName != userName || enteredPassword != password {
            showAlert(title: "Invalid login or password",
                      message: "Please enter correct login and password",
                      titleButton: "Ok")
            return
        }
                
    }
}

