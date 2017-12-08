//
//  YouTubeVideo.swift
//  YouTube Clone
//
//  Created by Obi-Voin Kenobi on 12/5/17.
//  Copyright © 2017 Obi-Voin Kenobi. All rights reserved.
//

import Foundation

struct YouTubeVideo {
    
    var id, thumbnailImageName, videoTitle, viewCount, uploadedTime, likeCount, dislikeCount : String
    var channel : YouTubeChannel
    
}


struct YouTubeChannel {
    
    var id, channelName, channelImageName, subscriberNumber : String
    
}


class VideoData {
    
    class func get() -> [YouTubeVideo] {
        var data = [YouTubeVideo]()
        
        let channel = YouTubeChannel(
            id: "petermckinnon24",
            channelName: "Peter McKinnon",
            channelImageName: "Peter McKinnon.jpg",
            subscriberNumber: "1,441,431 subscribers"
        )
        
        data.append(
            YouTubeVideo(
                id: "6353jekW_kk",
                thumbnailImageName: "6353jekW_kk.jpg",
                videoTitle: "START CRUSHING YOUR INSTAGRAM STORIES and Why THIS matters - I REALLY ENJOYED making THIS",
                viewCount: "1.3M views",
                uploadedTime: "4 days ago",
                likeCount: "16K",
                dislikeCount: "277",
                channel: channel
            )
        )
        
        data.append(
            YouTubeVideo(
                id: "Uw04rRj1ZyI",
                thumbnailImageName: "Uw04rRj1ZyI.jpg",
                videoTitle: "ENHANCING your photos in PHOTOSHOP!",
                viewCount: "176K views",
                uploadedTime: "6 days ago",
                likeCount: "15K",
                dislikeCount: "136",
                channel: channel
            )
        )
        
        data.append(
            YouTubeVideo(
                id: "xvUW-rRmAO8",
                thumbnailImageName: "xvUW-rRmAO8.jpg",
                videoTitle: "Make your DRONE FOOTAGE more CINEMATIC!!!",
                viewCount: "216K views",
                uploadedTime: "3 weeks ago",
                likeCount: "12K",
                dislikeCount: "76",
                channel: channel
            )
        )
        
        data.append(
            YouTubeVideo(
                id: "CdHV7Uzw2E4",
                thumbnailImageName: "CdHV7Uzw2E4.jpg",
                videoTitle: "The most UNDERRATED lens EVERYONE needs!",
                viewCount: "525K views",
                uploadedTime: "1 month ago",
                likeCount: "24K",
                dislikeCount: "375",
                channel: channel
            )
        )
        
        data.append(
            YouTubeVideo(
                id: "ARHFjBMxmsA",
                thumbnailImageName: "ARHFjBMxmsA.jpg",
                videoTitle: "Get CRAZY shots with STEEL WOOL photography!!!",
                viewCount: "272K views",
                uploadedTime: "2 months ago",
                likeCount: "15K",
                dislikeCount: "201",
                channel: channel
            )
        )
        
        data.append(
            YouTubeVideo(
                id: "e-4H9ZCzpWo",
                thumbnailImageName: "e-4H9ZCzpWo.jpg",
                videoTitle: "Why you NEED to understand COLOUR SPACE!",
                viewCount: "293K views",
                uploadedTime: "2 months ago",
                likeCount: "15K",
                dislikeCount: "141",
                channel: channel
            )
        )
        
        return data
    }
    
}
