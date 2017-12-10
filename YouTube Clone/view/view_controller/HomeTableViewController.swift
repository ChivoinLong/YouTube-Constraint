//
//  HomeTableViewController.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/5/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    private var youtubeVideos = [YouTubeVideo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youtubeVideos = VideoData.get()
        addNavBarImage(isLandscape: false)
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
    
    func addNavBarImage(isLandscape: Bool) {

        let navHeight = navigationController!.navigationBar.frame.height
        let navWidth = navigationController!.navigationBar.frame.width
        
        let youtubeIcon =  #imageLiteral(resourceName: "youtube-logo")
        let imageView = UIImageView(image: youtubeIcon)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: navHeight)
        
        let customView = UIView(frame: CGRect(x: 0, y: 0, width: navWidth, height: navHeight))
        customView.addSubview(imageView)
        
        let barBtn = UIBarButtonItem(customView: customView)
        
        self.navigationItem.leftBarButtonItem = barBtn
    }
    
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        tableView.reloadData()
    }
}

