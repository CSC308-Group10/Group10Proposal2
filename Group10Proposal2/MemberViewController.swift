//
//  MemberViewController.swift
//  Group10Proposal2
//
//  Created by Morgan, Ashley F. on 4/7/26.
//

import UIKit

class MemberViewController: UIViewController {
    
    var memberNameVar = ""
    
    @IBOutlet weak var memberImage: UIImageView!
    
    @IBOutlet weak var memberText: UITextView!
    @IBOutlet weak var memberName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memberName.text = memberNameVar
        memberImage.image = UIImage(named: memberNameVar) ?? UIImage(named: "Default")
        memberImage.layer.cornerRadius = 12
        switch(memberNameVar) {
        case "Dakota":
            memberText.text = "Notes:\n- Initialized the main concept of the group project\n- Created Timed game mode\n- Mapped out main concepts for customization and project design"
            break
        case "Greyson":
            memberText.text = "Notes:\n- Created main framework for application\n- Created AI game mode\n- Helped design UX/UI Views"
            break
        case "Alex":
            memberText.text = "Notes:\n- Helped brainstorm project ideas \n- Created Standard 2-player game mode \n- Helped design UI/UX Views"
            break
        default:
            break
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
