//
//  ViewController.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/18/21.
//

import UIKit

class IntroductionScreen: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var scoreTextField: UITextField!
    
    
    var person: Person?
    
    init?(coder: NSCoder, person: Person?) {
        self.person = person
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.person = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        nameTextField.text = person?.name
        scoreTextField.text = person?.score.description
        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
              let scoreString = scoreTextField.text?.description,
        let score = Int(scoreString)
        else {return}
        
        person = Person(name: name, score: score)
        
        performSegue(withIdentifier: "PlayerCell", sender: self)
        
    }
    
}

