//
//  HomeTableViewController.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/5/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit
import SnapKit

class HomeTableViewController: UITableViewController {

    private var youtubeVideos = [YouTubeVideo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youtubeVideos = VideoData.get()
        addNavBarImage()        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let youTubeVideoTableViewCell = Bundle.main.loadNibNamed("VideoTableViewCell", owner: self, options: nil)?.first as! VideoTableViewCell
        youTubeVideoTableViewCell.selectionStyle = .none
        
        youTubeVideoTableViewCell.setData(youtubeVideos[indexPath.item])
        
        return youTubeVideoTableViewCell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youtubeVideos.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToVideoDetail", sender: youtubeVideos[indexPath.item])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "goToVideoDetail" {
            if let detail = segue.destination as? DetailViewController {
                detail.video = sender as? YouTubeVideo
            }
        }
    }
    
    func addNavBarImage() {

        let navHeight = navigationController!.navigationBar.frame.height
        let navWidth = navigationController!.navigationBar.frame.width
        
        let youtubeIcon =  #imageLiteral(resourceName: "youtube-logo")
        let imageView = UIImageView(image: youtubeIcon)
//        navigationItem.titleView = imageView
        
        imageView.frame = CGRect(x: -15, y: 0, width: navWidth, height: navHeight)
        imageView.contentMode = .scaleAspectFill
        let imageItem = UIBarButtonItem.init(customView: imageView)
        
        let widthConstraint = imageView.widthAnchor.constraint(equalToConstant: navWidth / 4)
        let heightConstraint = imageView.heightAnchor.constraint(equalToConstant: navHeight)
        
        heightConstraint.isActive = true
        widthConstraint.isActive = true
        navigationItem.leftBarButtonItem = imageItem
    }
}

