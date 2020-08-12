//
//  MyListTableViewCell.swift
//  essential Oils Project
//
//  Created by Huda on 8/8/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import UIKit

class MyListTableViewCell: UITableViewCell {

    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
