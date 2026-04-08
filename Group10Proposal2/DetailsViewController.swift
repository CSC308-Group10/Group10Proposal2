//
//  DetailsViewController.swift
//  Group10Proposal2
//
//  Created by Goodman, Dakota K. on 4/7/26.
//

import UIKit

class DetailsViewController: UIViewController {

    var detailTopicVar = ""
    
    @IBOutlet weak var detailText: UITextView!
    @IBOutlet weak var detailTopic: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailTopic.text = detailTopicVar
        switch(detailTopicVar){
        case "Game Modes":
            detailText.text = "Details:\n1. Standard Battle: A standard 2-player game of Connect 4 \n2. CPU Battle: A game of Connect 4 against a Computer-Controlled Opponent (CPU) \n3. Rush Battle: A fast-paced 2-player Connect 4 game where each player has 3 seconds to place a piece, or else the system skips their turn."
            break
        case "Customization":
            detailText.text = "The game will allow for the players to customize different aspects about themselves in-game like: \n- Names: Allows the users to enter custom names to identify themselves with instead of just using Player 1 and Player 2 \n- Colors: Allows the users to select the color of their pieces through the use of a Drop Down Menu (Pull Down Button in Storyboard)"
            break
        case "Concepts to Use":
            detailText.text = "This project will demonstrate concepts learned throughout class, including, but not limited to: \n- Segues: Action-Triggered, Manual, Programmatic \n- Auto Layout: Allows for proper functioning and looks on all devices \n- Loops: To run actions multiple times without repeating code \n- And others like arrays, animations, tuples, custom classes, and more."
            break
        default:
            break
        }
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
