  //
//  TodoTableViewCell.swift
//  bitlist
//
//  Created by Mihir Waknis on 12/19/15.
//  Copyright © 2015 mihirwaknis. All rights reserved.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    @IBOutlet weak var completeButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func completeButtonTapped(sender: UIButton) {
    }
    
    @IBAction func favoriteButtonTapped(sender: UIButton) {
    }
    
}
