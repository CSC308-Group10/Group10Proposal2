//
//  ImageViewController.swift
//  Group10Proposal2
//
//  Created by Goodman, Dakota K. on 4/7/26.
//

import UIKit

class ImageViewController: UIViewController {

    var imageName = ""
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageName) ?? UIImage(named: "Default")
        imageView.layer.cornerRadius = 12
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
