//
//  MyTableViewCell.swift
//  ToDo App
//
//  Created by Brett J. Rapp on 10/12/2015.
//  Copyright © 2015 Brett J. Rapp. All rights reserved.
//

import UIKit


class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myTask : UILabel?
    @IBOutlet weak var myDescriptionLabel : UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
