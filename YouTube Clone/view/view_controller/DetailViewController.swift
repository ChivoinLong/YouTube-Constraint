//
//  DetailViewController.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/6/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    var video: YouTubeVideo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thumbnailImageView.image = UIImage(named: video.thumbnailImageName)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCell(withIdentifier: "tableCell")!
        
        switch indexPath.item {
        case 0:
            cell = Bundle.main.loadNibNamed("VideoInfoTableViewCell", owner: self, options: nil)?.first as! UITableViewCell
            (cell as! VideoInfoTableViewCell).setData(video)
        case 1:
            cell = Bundle.main.loadNibNamed("VideoInteractionTableViewCell", owner: self, options: nil)?.first as! UITableViewCell
            (cell as! VideoInteractionTableViewCell).setData(video)
        case 2:
            cell = Bundle.main.loadNibNamed("ChannelInfoTableViewCell", owner: self, options: nil)?.first as! UITableViewCell
            (cell as! ChannelInfoTableViewCell).setData(video)
        default:
            break
        }
        
        
        cell.selectionStyle = .none
        
        return cell
    }



}
