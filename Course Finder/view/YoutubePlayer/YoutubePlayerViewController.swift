//
//  YoutubePlayerViewController.swift
//  Coursee
//
//  Created by Duc Tran on 6/21/16.
//  Copyright © 2016 Developers Academy. All rights reserved.
//

import UIKit

class YoutubePlayerViewController: UIViewController
{
    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var videoURL: URL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        youtubePlayerView.layer.cornerRadius = 5.0
        youtubePlayerView.layer.masksToBounds = true
        
        if let videoURL = videoURL {
            youtubePlayerView.loadVideoURL(videoURL)
        } else {
            let alertController = UIAlertController(title: "Ooops!", message: "The video can't be accessed", preferredStyle: UIAlertControllerStyle.alert)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func closeDidTap() {
        self.dismiss(animated: true, completion: nil)
    }
}
