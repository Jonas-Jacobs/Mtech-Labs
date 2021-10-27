//
//  AddEditTableViewCell.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/22/21.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var currentWinnerLabel: UILabel!
    
    func update(with gameWinner: GamePlayer) {
        gameLabel.text = gameWinner.game
        currentWinnerLabel.text = gameWinner.winner
    }
}
