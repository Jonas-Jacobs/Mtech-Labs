//
//  ViewController.swift
//  Segues and stuff
//
//  Created by Jonas Jacobs on 9/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    @IBAction func forgotUsernameActionButton(_ sender: Any) {
      
        performSegue(withIdentifier: "viewControlerSegue", sender: sender)
    }
    @IBAction func forgotPasswordActionButton(_ sender: Any) {
        performSegue(withIdentifier: "viewControlerSegue", sender: sender)
    }
    
}

