//
//  AddEditInitialTableView.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/22/21.
//

import Foundation

class GamePlayer {
    
    var winner: String
    var game: String
    var players: [Person]
    
    init? (winner: String, game: String, players: Person){
        self.winner = winner
        self.game = game
        self.players = [players]
    }
}
