//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Jonas Jacobs on 8/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MainLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeTitle(_ sender: Any) {
        MainLable.text = "This app rocks!"
    }
    
}

