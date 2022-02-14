//
//  ListController.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/11.
//

import Foundation
import UIKit

class ListController : UIViewController{
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var list : [ToDo] = [ToDo(sender: "1@2.com", body: "Eat"),
                         ToDo(sender: "1@2.com", body: "sleep"),
                         ToDo(sender: "1@2.com", body: "draw")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        navigationItem.hidesBackButton = true
        tableView.register(UINib(nibName: "ListCell", bundle: nil), forCellReuseIdentifier: "ReuseCell")
    }
    
    
    @IBAction func pressedSidebar(_ sender: UIBarButtonItem) {
        print("Pressed sidebar")
    }
    
}

//make cell
extension ListController : UITableViewDataSource{
    
    //numberOfCells
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseCell", for: indexPath) as! ListCell
        cell.label?.text = list[indexPath.row].body
        return cell
    }
}

//touch cell
//extension ListController : UITableViewDelegate{
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//}
