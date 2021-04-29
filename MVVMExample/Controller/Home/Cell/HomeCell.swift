//
//  HomeCell.swift
//  MVVMExample
//
//  Created by Tiến on 4/28/21.
//  Copyright © 2021 Tiến. All rights reserved.
//

import UIKit
import Reusable
import SDWebImage

final class HomeCell: UITableViewCell, NibReusable {

    @IBOutlet private weak var avatarImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func binding(champion: Displayable) {
        nameLabel.text = champion.nameLabelText
        avatarImage.sd_setImage(with: champion.imageURL, completed: nil)
    }
    
}
