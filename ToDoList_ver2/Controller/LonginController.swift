//
//  LonginController.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/11.
//

import Foundation
import UIKit
import Firebase

class LoginController : UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { authDataResult, error in
                if let e = error{
                    print(e)
                }else{
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }
    }
}
