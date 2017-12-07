//
//  CourseDetailViewController.swift
//  Course Finder
//
//  Created by Bespokino on 30/11/2560 BE.
//  Copyright © 2560 Bespokino. All rights reserved.
//

import UIKit

class CourseDetailViewController: UIViewController {

    
   @IBOutlet weak var joinCourseButton:UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var courseDescriptionText: UITextView!
    @IBOutlet weak var courseFeaturedImageView: UIImageView!
    
    var course:Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        courseFeaturedImageView.image = course.featuredImage
        courseDescriptionText.text = course.description
        courseTitleLabel.text = course.title
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])

        joinCourseButton.layer.cornerRadius = 3.0
        joinCourseButton.layer.masksToBounds = true
        
        
        
        self.navigationItem.title = course.instructor
    
    
    }

    @IBAction func playButtonDidTap(_ sender: Any) {
    }
    
    @IBAction func joinButtonDidTap(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "Congratulations", message: "You just enrolled in \(course.title) successfully", preferredStyle: UIAlertControllerStyle.alert)
        
        
        let okAction  = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    struct storyBoard {
        static let presentPlater = "presentPlayer"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == storyBoard.presentPlater{
            
          if  let playerViewController = segue.destination as? PlayerViewController{
                playerViewController.videoURL = course.introductionURL
            }
 
        }
    }
}
