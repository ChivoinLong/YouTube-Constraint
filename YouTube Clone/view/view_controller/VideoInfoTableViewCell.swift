//
//  VideoInfoTableViewCell.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/6/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class VideoInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var viewCountLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setData(_ video :YouTubeVideo) {
        videoTitleLabel.text = video.videoTitle
        viewCountLabel.text = video.viewCount
    }
    
    
}
