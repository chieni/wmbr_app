//
//  ShowTableViewCell.swift
//  WMBRApp
//
//  Created by Brian Sennett on 2/18/18.
//  Copyright © 2018 WMBR. All rights reserved.
//

import UIKit

class ShowTableViewCell: UITableViewCell {
    
    //MARK: Properties

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
