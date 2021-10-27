//
//  GameSettingsViewController.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/25/21.
//

import UIKit

class GameSettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var players: [GamePlayer] = []
    
    var player: GamePlayer?
    
    @IBOutlet weak var gameTextField: UITextField!
    @IBOutlet weak var sortPlayerBy: UISegmentedControl!
    @IBOutlet weak var sortGameBy: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddNewGameCell", for: indexPath) as! GamesTableViewCell
        let player = players[indexPath.row]
        
        cell.update(with: player)
        return cell
    }
    
    @IBAction func prepareForUnWindSegueGameSettings(segue: UIStoryboardSegue) {
        guard let source = segue.source as? IntroductionScreen,
              let player = source.player else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow {
            players.remove(at: indexPath.row)
            players.insert(player, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            players.append(player)
        }
        tableView.reloadData()
    }
    
}
