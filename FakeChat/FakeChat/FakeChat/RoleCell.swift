//
//  RoleCell.swift
//  FakeChat
//
//  Created by arthuryu on 15/8/9.
//  Copyright (c) 2015年 XYZ. All rights reserved.
//

import UIKit

class RoleCell: UITableViewCell
{
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
