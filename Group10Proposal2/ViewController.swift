//
//  ViewController.swift
//  Group10Proposal2
//
//  Created by Goodman, Dakota K. on 4/7/26.
//

import UIKit

class ViewController: UIViewController {

    let group10 = ["Dakota", "Greyson", "Alex"]
    let projectTable = ["Game Modes", "Customization"]
    let imageTable = ["Launch Screen", "Main Screen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section{
        case 0:
            print()
        case 1:
            print()
        case 2:
            print()
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
}
