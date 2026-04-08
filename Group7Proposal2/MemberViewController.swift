//
//  MemberViewController.swift
//  Group7Proposal2
//
//  Created by Pedigo, Charles L. on 4/7/26.
//

import UIKit

class MemberViewController: UIViewController {
    
    @IBOutlet weak var memberImageView: UIImageView!
    @IBOutlet weak var memberNameLabel: UILabel!
    @IBOutlet weak var memberNotesLabel: UILabel!
    
    var recievedImage = UIImage(named: "group")
    var recievedName = "Name"
    var recievedNotes = "Notes"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memberImageView.image = recievedImage
        memberNameLabel.text = recievedName
        memberNotesLabel.text = recievedNotes
        
    }
    
}

