//
//  AtheleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Jonas Jacobs on 10/6/21.
//

import UIKit

class AtheleteFormViewController: UIViewController {
    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    @IBOutlet weak var ageTextFieldOutlet: UITextField!
    @IBOutlet weak var teamTextFieldOutlet: UITextField!
    @IBOutlet weak var leagueTextFiledOutlet: UITextField!
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    func updateView() {
        if let athlete = athlete {
            nameTextFieldOutlet.text = athlete.name
            ageTextFieldOutlet.text = String(athlete.age)
            teamTextFieldOutlet.text = athlete.team
            leagueTextFiledOutlet.text = athlete.league
        }
    }

    @IBAction func saveButtonAction(_ sender: Any) {
        guard let name = nameTextFieldOutlet.text,
            let ageString = ageTextFieldOutlet.text,
            let age = Int(ageString),
            let league = leagueTextFiledOutlet.text,
            let team = teamTextFieldOutlet.text
            else {return}
        
            athlete = Athlete(name: name, age: age, league: league,
            team: team)
        performSegue(withIdentifier: "bingus", sender: self)
    }
   
}
