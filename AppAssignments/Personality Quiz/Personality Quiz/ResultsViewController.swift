//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Jonas Jacobs on 9/30/21.
//

import UIKit


class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsAnswerLabel: UILabel!
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    
    
    var responses: [Answer]
    
    init?(coder:NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    
        func calculatePersonalityResult() {
          let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
                counts[answer.type, default: 0] += 1
            }
            let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 >
               $1.1 }.first!.key
            resultsAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
            resultsDefinitionLabel.text = mostCommonAnswer.definition
            
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
