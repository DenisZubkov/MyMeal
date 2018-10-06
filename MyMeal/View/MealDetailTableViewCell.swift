//
//  MealDetailTableViewCell.swift
//  MyMeal
//
//  Created by Dennis Zubkoff on 06/10/2018.
//  Copyright © 2018 Denis Zubkov. All rights reserved.
//

import UIKit

class MealDetailTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
