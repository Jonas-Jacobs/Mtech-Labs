//
//  ViewController.swift
//  TwoButtonsApp
//
//  Created by Jonas Jacobs on 9/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        labelOutlet.text = textField.text
    }
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        labelOutlet.text = ""
        textField.text = ""
    }
    

}

