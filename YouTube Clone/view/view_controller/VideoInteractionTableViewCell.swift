//
//  VideoInteractionTableViewCell.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/7/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class VideoInteractionTableViewCell: UITableViewCell {

    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var dislikeCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ data: YouTubeVideo) {
        likeCountLabel.text = data.likeCount
        dislikeCountLabel.text = data.dislikeCount
    }
    
}
