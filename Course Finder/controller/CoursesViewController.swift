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
    var selectedCourse:Course!
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
    
        let chefCourse = self.courses[0]
        selectedCourse = chefCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: StoryBoard.showCourseDetail, sender: self)
       
    }
    
    
    
    @IBAction func developerCourseDidTap(_ sender: Any) {
        
        
        let developerCourse = self.courses[1]
        selectedCourse = developerCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: StoryBoard.showCourseDetail, sender: self)
        
    }
    
    
    @IBAction func popStarCourseDidTap(_ sender: Any) {
        
        let popStarCourse = self.courses[2]
        selectedCourse = popStarCourse
        print(selectedCourse.title)
        
        self.performSegue(withIdentifier: StoryBoard.showCourseDetail, sender: self)
    }
    
    struct StoryBoard {
        static let showCourseDetail = "showCourseDetail"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == StoryBoard.showCourseDetail {
            
            if let courseDetailViewController = segue.destination as? CourseDetailViewController{
                courseDetailViewController.course = self.selectedCourse
                
                
            }
            
            
        }
    }

}
