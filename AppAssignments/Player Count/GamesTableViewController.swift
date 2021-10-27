//
//  AddEditTableViewController.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/22/21.
//

import UIKit

class GamesTableViewController: UITableViewController {
    
    var winners: [GamePlayer] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return winners.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameWinnerCell", for: indexPath) as! GamesTableViewCell
        
        let gameWinner = winners[indexPath.row]
        
        cell.update(with: gameWinner)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
       commit editingStyle: UITableViewCell.EditingStyle,
       forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            winners.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: . automatic)
        }
    }
}
