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

    
    
    }

    @IBAction func playButtonDidTap(_ sender: Any) {
    }
    
    @IBAction func joinButtonDidTap(_ sender: Any) {
    }
    
}
