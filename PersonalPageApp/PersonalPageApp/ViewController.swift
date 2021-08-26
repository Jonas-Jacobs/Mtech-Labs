//
//  ViewController.swift
//  PersonalPageApp
//
//  Created by Jonas Jacobs on 8/25/21.
//

import UIKit
var color = true
class ViewController: UIViewController {
    
    @IBAction func backGroundColor(_ sender: Any) {
        if color{
            view.backgroundColor = color ? .yellow : . black
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    
    
    }

}

