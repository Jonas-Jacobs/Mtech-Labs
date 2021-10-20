//
//  ViewController.swift
//  Table views
//
//  Created by Jonas Jacobs on 10/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var dates = [Date]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func plusButtonTapped(_ sender: UIBarButtonItem) {
        dates.append(Date())
        tableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath)
        let date = dates[indexPath.row]
        cell.textLabel?.text = "\(date)"
        return cell
        // The let and return isnt needed unless your have more than one line
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

