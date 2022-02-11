//
//  ViewController.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/11.
//

import UIKit
import CLTypingLabel

class LogInViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "ToDoList"
        
    }


}

