//
//  ViewController.swift
//  Group7Proposal2
//
//  Created by Moore, Xander J. on 4/7/26.
//

import UIKit

class ViewController: UIViewController {
    let teamMembers = ["Lucas Pedigo", "Jackson Poynter", "Xander J. Moore"]
    let goals = ["Frontend", "Backend", "UI Design"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

var segueIdentifier = "0"

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                print("Lucas Pedigo")
                segueIdentifier = "LucasPedigo"
                performSegue(withIdentifier: "MemberSegue", sender: self)
            case 1:
                print("Jackson Poynter")
                segueIdentifier = "JacksonPoynter"
                performSegue(withIdentifier: "MemberSegue", sender: self)
            case 2:
                print("Xander J. Moore")
                segueIdentifier = "XanderMoore"
                performSegue(withIdentifier: "MemberSegue", sender: self)
            default:
                break;
            }
        case 1:
            switch indexPath.row {
            case 0:
                print("Frontend")
                segueIdentifier = "Frontend"
                performSegue(withIdentifier: "ProjectSegue", sender: self)
            case 1:
                print("Backend")
                segueIdentifier = "Backend"
                performSegue(withIdentifier: "ProjectSegue", sender: self)
            case 2:
                print("UI Design")
                segueIdentifier = "UIDesign"
                performSegue(withIdentifier: "ProjectSegue", sender: self)
            default:
                break
            }
        case 2:
            print("Preview");
            // Preview selected
        default:
            break
        }
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
        //Member cell segues
        if let destinationVC = segue.destination as? MemberViewController {
            if segueIdentifier == "LucasPedigo" {
                destinationVC.navigationItem.title = "Lucas Pedigo"
                destinationVC.recievedImage = UIImage(named: "group")!
                destinationVC.recievedName = "Lucas Pedigo"
                destinationVC.recievedNotes = "Head lead for UI design, segues, and programming assistance. Responsible for maintaining the app's design and ensuring that all features are functional and user-friendly. Also keeps the timeline of the project on track and ensures that all tasks are completed before the deadline."

            }else if segueIdentifier == "JacksonPoynter" {
                destinationVC.navigationItem.title = "Jackson Poynter"
                destinationVC.recievedImage = UIImage(named: "group")!
                destinationVC.recievedName = "Jackson Poynter"
                destinationVC.recievedNotes = "Programmer and backend developer. Responsible for maintaining the app's functionality and ensuring that all data is stored and retrieved securely. Also works closely with the UI team to ensure that the backend and frontend are working together seamlessly."
                
            }else if segueIdentifier == "XanderMoore" {
                destinationVC.navigationItem.title = "Xander Moore"
                destinationVC.recievedImage = UIImage(named: "group")!
                destinationVC.recievedName = "Xander Moore"
                destinationVC.recievedNotes = "Project Designer and quality assurance. Responsible for maintaining the project goals meet the expected criteria and assisting where support is needed."
            }
            
        }else if let destinationVC = segue.destination as? ProjectViewController {
            if segueIdentifier == "Frontend" {
                destinationVC.navigationItem.title = "Password Generator"
                destinationVC.recievedImage = UIImage(named: "password")!
                destinationVC.recievedTitle = "Frontend"
                destinationVC.recievedNotes = "Frontend Notes"
                
            }else if segueIdentifier == "Backend" {
                destinationVC.navigationItem.title = "Password Generator"
                destinationVC.recievedImage = UIImage(named: "password")!
                destinationVC.recievedTitle = "Backend"
                destinationVC.recievedNotes = "Backend Notes"
                
            }else if segueIdentifier == "UIDesign" {
                destinationVC.navigationItem.title = "Password Generator"
                destinationVC.recievedImage = UIImage(named: "password")!
                destinationVC.recievedTitle = "UI Design"
                destinationVC.recievedNotes = "UI Design Notes"
                
            }
        }
        

        
    }
    
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return teamMembers.count
        case 1:
            return goals.count
        case 2:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath);
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = teamMembers[indexPath.row]
            cell.backgroundColor = .systemMint
        case 1:
            cell.textLabel?.text = goals[indexPath.row]
            cell.backgroundColor = .systemCyan
        case 2:
            cell.imageView?.image = UIImage(named: "ux")
            cell.textLabel?.text = "Project Preview"
            cell.backgroundColor = .systemTeal
        default:
            break;
        }
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 2:
            return 100
        default:
            return 44
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Team Members";
        case 1:
            return "Project Goals";
        case 2:
            return "Preview";
        default:
            return nil;
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
        case 0:
            return "A simple password generator based on the minimum requirements specified";
        case 1:
            return "If a user needs to generate a password, they can say what they need it to have (ex. symbols, minimum length, capitals, etc.) and the project will generate an appropriate password";
        default:
            return nil;
        }
    }
}

