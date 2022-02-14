//
//  sidebarTableViewCell.swift
//  ToDoList_ver2
//
//  Created by JunHwan Kim on 2022/02/14.
//

import UIKit

class sidebarTableViewCell: UITableViewCell {

    @IBOutlet weak var sidebarButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        print("\(sidebarButton.currentTitle) pressed")
    }
}
