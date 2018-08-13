//
//  ResDetailHeaderView.swift
//  practice-tableView
//
//  Created by Mohammed Abalkhail on 8/13/18.
//  Copyright © 2018 Mohammed Abalkhail. All rights reserved.
//

import UIKit

class ResDetailHeaderView: UIView {
    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.numberOfLines = 0
        }
    }
    @IBOutlet weak var typeLabel: UILabel! {
        didSet {
            typeLabel.layer.cornerRadius = 5.0
            typeLabel.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var heartImageView : UIImageView! 


    
}
