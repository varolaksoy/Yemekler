//
//  ReadRecipeTableViewCell.swift
//  Yemekler
//
//  Created by Mac on 28.05.2018.
//  Copyright © 2018 Varol. All rights reserved.
//

import UIKit

class ReadRecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeText: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
