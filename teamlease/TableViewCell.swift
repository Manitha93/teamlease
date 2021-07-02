//
//  TableViewCell.swift
//  teamlease
//
//  Created by Manitha on 02/07/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var lblname: UILabel!
    
    @IBOutlet var lblPhone: UILabel!
    @IBOutlet var lblwebsite: UILabel!
    @IBOutlet var lblcompNAme: UILabel!

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
