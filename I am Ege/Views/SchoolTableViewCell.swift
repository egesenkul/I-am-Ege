//
//  SchoolTableViewCell.swift
//  I am Ege
//
//  Created by Ege Şenkul on 4.07.2021.
//

import UIKit

class SchoolTableViewCell: UITableViewCell {
    @IBOutlet var schoolNameLabel: UILabel!
    @IBOutlet var schoolDateLabel: UILabel!
    @IBOutlet var schoolDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
