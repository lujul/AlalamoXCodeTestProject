//
//  MasterViewCell.swift
//  AlalaXCodeProject
//
//  Created by imac on 29/11/2016.
//  Copyright © 2016 imac. All rights reserved.
//

import UIKit

class MasterViewCell: UITableViewCell {

    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func display(photo:Photo) {
        
       imageLabel.text = photo.title

    }

}
