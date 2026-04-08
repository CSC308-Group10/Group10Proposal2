//
//  ViewController.swift
//  Group10Proposal2
//
//  Created by Goodman, Dakota K. on 4/7/26.
//

import UIKit

class ViewController: UIViewController {

    let group10 = ["Dakota", "Greyson", "Alex"]
    let projectTable = ["Game Modes", "Customization", "Concepts to Use"]
    let imageTable = ["Launch Screen", "Main Screen"]
    
    var selectedMember = ""
    var selectedTopic = ""
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section{
        case 0: // Team Member Section
            switch(indexPath.row) {
                case 0:
                    // Dakota's section
                    selectedMember = group10[0]
                    self.performSegue(withIdentifier: "memberSegue", sender: self)
                    break
                case 1:
                    // Greyson's section
                    selectedMember = group10[1]
                    self.performSegue(withIdentifier: "memberSegue", sender: self)
                    break
                case 2:
                    // Alex's section
                    selectedMember = group10[2]
                    self.performSegue(withIdentifier: "memberSegue", sender: self)
                    break
                default:
                    break
            }
        case 1: // Project Details Section
            switch(indexPath.row) {
            case 0:
                // Game Modes Section
                selectedTopic = projectTable[0]
                self.performSegue(withIdentifier: "detailSegue", sender: self)
                break
            case 1:
                // Customization Section
                selectedTopic = projectTable[1]
                self.performSegue(withIdentifier: "detailSegue", sender: self)
                break
            case 2:
                // Concepts to Use Section
                selectedTopic = projectTable[2]
                self.performSegue(withIdentifier: "detailSegue", sender: self)
                break
            default:
                break
        }
        case 2: // UI/UX Design Section
            switch(indexPath.row) {
            case 0: // Launch Screen
                selectedImage = imageTable[0]
                self.performSegue(withIdentifier: "uiSegue", sender: self)
                break
            case 1:
                selectedImage = imageTable[1]
                self.performSegue(withIdentifier: "uiSegue", sender: self)
                break
            default:
                break
            }

        default:
            break
        }
    }
}

extension ViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        print("#1. ", #function)
        switch section{
        case 0:
            return group10.count
        case 1:
            return projectTable.count
        case 2:
            return imageTable.count
        default:
            return 0
        }
    }
    //This method is called repeatedly
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#1. ", #function, indexPath)
       //#1. Get or reuse a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2. Put data into the cell
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = group10[indexPath.row]
        case 1:
            cell.textLabel?.text = projectTable[indexPath.row]
        case 2:
            cell.textLabel?.text = imageTable[indexPath.row]
        default:
            break
        }
        
        //#3. Return the cell
        return cell //for a cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Members"
        case 1:
            return "Project Details"
        case 2:
            return "Project Images"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Descriptions of each member"
        case 1:
            return "Different choices for the project"
        case 2:
            return "Images similar to end goal of the project"
        default:
            return nil
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "memberSegue") {
            guard let destVC = segue.destination as? MemberViewController else {
                print("Couldn't get destination view controller")
                return
            }
            destVC.memberNameVar = selectedMember
        } else if(segue.identifier == "detailSegue") {
            guard let destVC = segue.destination as? DetailsViewController else {
                print("Couldn't get destination view controller")
                return
            }
            destVC.detailTopicVar = selectedTopic
        } else if(segue.identifier == "uiSegue") {
            guard let destVC = segue.destination as? ImageViewController else {
                print("Couldn't get destination view controller")
                return
            }
            destVC.imageName = selectedImage
        }
    }
}
