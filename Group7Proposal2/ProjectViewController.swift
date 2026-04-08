//
//  ProjectViewController.swift
//  Group7Proposal2
//
//  Created by Pedigo, Charles L. on 4/7/26.
//

import UIKit

class ProjectViewController: UIViewController {
    
    @IBOutlet weak var projectImageView: UIImageView!
    @IBOutlet weak var projectTitleLabel: UILabel!
    @IBOutlet weak var projectDescriptionLabel: UILabel!
    
    
    var recievedImage = UIImage(named: "password")
    var recievedTitle = "Frontend"
    var recievedNotes = "Notes"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectImageView.image = recievedImage
        projectTitleLabel.text = recievedTitle
        projectDescriptionLabel.text = recievedNotes
        
              
    }
}
