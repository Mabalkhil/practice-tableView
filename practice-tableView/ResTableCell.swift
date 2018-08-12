//
//  ResTableCell.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/8/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import UIKit

class ResTableCell: UITableViewCell {

    @IBOutlet weak var imageHeart: UIImageView!
    @IBOutlet weak var typeL: UILabel!
    @IBOutlet weak var locationL: UILabel!
    @IBOutlet weak var nameL: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
