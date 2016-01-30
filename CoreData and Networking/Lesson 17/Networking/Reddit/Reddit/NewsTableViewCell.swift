//
//  NewsTableViewCell.swift
//  Reddit
//
//  Created by Antonio de Perio on 21/01/2016.
//  Copyright © 2016 Workshop. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var newsHeadlineLabel: UILabel!
    
    @IBOutlet weak var featureImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
