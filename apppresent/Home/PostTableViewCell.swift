//
//  PostTableViewCell.swift
//  apppresent
//
//  Created by Macbook Pro on 21/01/2019.
//  Copyright © 2019 Macbook Pro. All rights reserved.
//

import UIKit
import PKHUD
class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var feedimageview: UIImageView!
    @IBOutlet weak var feedcaptionlbl: UILabel!
    @IBOutlet weak var feednamelbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.feedimageview.image = nil
        self.feedcaptionlbl.text = ""
        
        // this is demo for git stash 
    }

}