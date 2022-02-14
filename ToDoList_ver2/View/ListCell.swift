//
//  ListCell.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/14.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var listBubble: UIStackView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func checkPressed(_ sender: UIButton) {
        print("\(label.text!) check")
    }
    
    @IBAction func deletePressed(_ sender: UIButton) {
        print("\(label.text!) delete")
    }
}
