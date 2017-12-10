//
//  ChannelInfoTableViewCell.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/7/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class ChannelInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var channelImageViewLabel: UIImageView!
    @IBOutlet weak var channelNameLabel: UILabel!
    @IBOutlet weak var subcriberNumberLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(_ data: YouTubeVideo) {
        channelImageViewLabel.image = UIImage(named: data.channel.channelImageName)
        channelNameLabel.text = data.channel.channelName
        subcriberNumberLabel.text = data.channel.subscriberNumber
    }
    
    
}
