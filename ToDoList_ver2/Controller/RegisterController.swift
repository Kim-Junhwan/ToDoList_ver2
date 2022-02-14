//
//  RegisterController.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/11.
//

import Foundation
import UIKit
import Firebase

class RegisterController : UIViewController{
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password){ authResult, error in
                if let e = error{
                    print(e)
                }else{
                    self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                }
            }
        }
        
        
    }
    
}
