//
//  YouTubeVideoTableViewCell.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/5/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    var id: String!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var channelImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var channelNameLabel: UILabel!
    @IBOutlet weak var viewCountLabel: UILabel!
    @IBOutlet weak var uploadedTimeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ data: YouTubeVideo) {
        id = data.id
        thumbnailImageView.image = UIImage(named: data.thumbnailImageName)
        channelImageView.image = UIImage(named: data.channel.channelImageName)
        titleLabel.text = data.videoTitle
        channelNameLabel.text = data.channel.channelName
        viewCountLabel.text = data.viewCount
        uploadedTimeLabel.text = data.uploadedTime
    }
}
