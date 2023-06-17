//
//  TableViewCell1.swift
//  GIVAApplication
//
//  Created by R93 on 13/06/23.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
   
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
