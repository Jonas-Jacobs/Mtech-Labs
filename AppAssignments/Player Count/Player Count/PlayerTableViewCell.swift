//
//  PlayerTableViewCell.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/18/21.
//

import UIKit

protocol PlayerTableViewDelagate {
    func updateScore()
}

class PlayerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerNumberLabel: UILabel!
    @IBOutlet weak var scorePlayerLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var person: Person?
    
    var delagate: PlayerTableViewDelagate?
    
    func update(with person: Person) {
        playerNumberLabel.text = person.name
        scorePlayerLabel.text = person.score.description
        
        stepper.value = Double(person.score)
        self.person = person
        
    }
    
    @IBAction func stepperTapped(_ sender: UIStepper) {
        scorePlayerLabel.text = Int(sender.value).description
        person?.score = Int(sender.value)
        
        delagate?.updateScore()
        
    }

}
