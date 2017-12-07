//
//  PlayerViewController.swift
//  Course Finder
//
//  Created by Bespokino on 7/12/2560 BE.
//  Copyright © 2560 Bespokino. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

   // @IBOutlet weak var youtubePlayer:UIButton!
    @IBOutlet weak var youTubePlayer: YouTubePlayerView!
    var videoURL:URL!
    override func viewDidLoad() {
        super.viewDidLoad()

        if  videoURL != nil{
            
            youTubePlayer.loadVideoURL(videoURL)
        }else{
            let alertController = UIAlertController(title: "Eror", message: "Failed to load video content", preferredStyle: UIAlertControllerStyle.alert)
            
            
            let okAction  = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { (action) in
                self.dismiss(animated: true, completion: nil)
            }
            
            alertController.addAction(okAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
        youTubePlayer.layer.cornerRadius = 3.0
        youTubePlayer.layer.masksToBounds = true
        
    }

    @IBAction func closeButtonDidTap(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
