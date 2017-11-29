//
//  CoursesViewController.swift
//  Course Finder
//
//  Created by Bespokino on 29/11/2560 BE.
//  Copyright © 2560 Bespokino. All rights reserved.
//

import UIKit

class CoursesViewController: UIViewController {

    @IBOutlet weak var chefCourseButton: UIButton!
    
    @IBOutlet weak var developerCourseButton: UIButton!
    
    @IBOutlet weak var popStarCourseButton: UIButton!
    
    
    var courses:[Course] = CourseStore.downloadNewCourses()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        chefCourseButton.setImage(#imageLiteral(resourceName: "cover_chef"), for: [])
        
        self.updateUI()
        
    }

    func updateUI()
    {
    let chefCourse = courses[0]
        chefCourseButton.setImage(chefCourse.buttonImage, for: [])
    
        let developerCourse = courses[1]
            developerCourseButton.setImage(developerCourse.buttonImage, for: [])
        
        let popStarCourse = courses[2]
        popStarCourseButton.setImage(popStarCourse.buttonImage, for: [])
    
    }
    
    @IBAction func chefCourseDidtap(_ sender: Any) {
        
        
        
        
        
    }
    
    
    
    @IBAction func developerCourseDidTap(_ sender: Any) {
        
        
        
        
        
        
    }
    
    
    @IBAction func popStarCourseDidTap(_ sender: Any) {
        
        
        
        
        
    }
    
    
    
    

}
