//
//  ViewController.swift
//  Calculator
//
//  Created by Jonas Jacobs on 9/13/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelForCalculator: UILabel!
    var value: Double?
    var secondValue: Double?
    var operation: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let buttonText = sender.titleLabel?.text else {
            return
        }
        print("Button was tapped \(buttonText)")
        switch buttonText {
        case "1" , "2", "3", "4", "5", "6", "7", "8", "9" , "0", "." :
            labelForCalculator.text! += buttonText
        case "+", "-", "/", "X":
            value = Double(labelForCalculator.text!)
            operation = buttonText
            labelForCalculator.text = ""
        case "=" :
            secondValue = Double(labelForCalculator.text!)
            labelForCalculator.text = getResult()
        case "+/-", "%":
            labelForCalculator.text! += buttonText
        case "A/C":
            labelForCalculator.text! = ""
        default:
            print("this doesnt work")
        }
        
    }
    func getResult() -> String {
        switch operation! {
        case "+":
            let result = value! + secondValue!
            return String(result)
        default:
            return "Error"
        }
    }
}

