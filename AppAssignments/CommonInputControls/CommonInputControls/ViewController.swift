//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Jonas Jacobs on 9/10/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var silder: UISlider!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(printButton(_:)),
           for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @IBAction func printButton(_ sender: Any) {
        print("Wow very cool this printed to the consol")
    
    if toggle.isOn {
    print("The Switch is on")
    } else {
    print("The switch is off")
        }
        print("The slider is set to \(silder.value)")
    }
    @IBAction func tapGestureXAndY(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
}

