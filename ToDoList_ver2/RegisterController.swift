//
//  RegisterController.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/11.
//

import Foundation
import UIKit

class RegisterController : UIViewController{
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        print("Register")
    }
    
}
