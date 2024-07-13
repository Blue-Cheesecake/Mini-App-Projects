//
//  ViewController.swift
//  FirstStoryboardApp
//
//  Created by Cheese Macaron on 13/7/2567 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var isBuilding = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    ///   This function will executed only if the button is clicked
    ///
    ///   - Parameter sender: any sender
    @IBAction func onChangeImage(_ sender: Any) {
        print("Toogling image")
        
        if isBuilding {
            imageView.image = UIImage(named: "open_graph_logo")
        } else {
            imageView.image = UIImage(named: "3-TIS_Building")
        }
        
        isBuilding = !isBuilding
    }
}

