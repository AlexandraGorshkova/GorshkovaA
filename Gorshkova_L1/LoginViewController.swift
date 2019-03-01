//
//  LoginViewController.swift
//  Gorshkova_L1
//
//  Created by Alexandra Gorshkova on 01/03/2019.
//  Copyright © 2019 Alexandra Gorshkova. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBAction func enterButton(_ sender: Any) {
        let login = loginText.text!
        let password = passwordText.text!
        validateData(login: login,password: password)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 

    }
    
    func validateData(login: String, password: String ) {
        if login == "admin" && password == "123456" {
            alert(message: "успешная авторизация")
        } else {
           alert(message: "неуспешная авторизация")
        }

    }
    
    func alert(message : String) {
        
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
