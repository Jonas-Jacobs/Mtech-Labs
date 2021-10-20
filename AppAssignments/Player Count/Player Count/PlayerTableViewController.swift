//
//  PlayerTableViewController.swift
//  Player Count
//
//  Created by Jonas Jacobs on 10/18/21.
//

import UIKit

class PlayerTableViewController: UITableViewController {

    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as? PlayerTableViewCell
        let person = persons[indexPath.row]
        
        cell?.update(with: person)
        cell?.delagate = self
        
        return cell ?? UITableViewCell()
    }

    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        guard let source = segue.source as? IntroductionScreen,
              let person = source.person else {return}
        
        if let indexPath = tableView.indexPathForSelectedRow {
            persons.remove(at: indexPath.row)
            persons.insert(person, at: indexPath.row)
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            persons.append(person)
        }
        
    }
    
    @IBSegueAction func editPerson(_ coder: NSCoder, sender: Any?) -> IntroductionScreen? {
        guard let cell = sender as? UITableViewCell,
              let indexPath = tableView.indexPath(for: cell) else {return nil}
        let person = persons[indexPath.row]
        
        return IntroductionScreen(coder: coder, person: person)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
}

extension PlayerTableViewController: PlayerTableViewDelagate {
    
    func updateScore() {
    
        persons.sort{ person1, person2 in
            return person1.score > person2.score
        }
        
        tableView.reloadData()
    }
}
