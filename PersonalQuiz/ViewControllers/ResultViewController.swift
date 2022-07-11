//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by ikorobov on 10.07.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultDefinition: UILabel!
    
    var answersChosen: [Answer]!
    var result: [Animal]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResult()
        navigationItem.hidesBackButton = true
        
        resultLabel.text = "Вы - \(result.first?.rawValue ?? Animal.horse.rawValue)"
        resultDefinition.text = result.first?.defenition ?? Animal.horse.defenition
    }
    
    private func getResult() {
        
        var resultData: [Animal:Int] = [:]
        
        for answers in answersChosen {
            resultData[answers.animal, default: 0] += 1
        }
        result = resultData.sorted { $0.value > $1.value }.map { $0.key }
    }
    
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
}

