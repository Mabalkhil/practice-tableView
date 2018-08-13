//
//  ResDetailIconTextCellTableViewCell.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/13/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import UIKit

class ResDetailIconTextCell: UITableViewCell {

    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var textL: UILabel!{
        didSet{
            textL.numberOfLines = 0
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
