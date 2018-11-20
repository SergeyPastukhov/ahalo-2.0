//
//  ViewController.swift
//  ahalo
//
//  Created by Student on 16/11/2018.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = [
        "Арбуз",
        "Банан",
        "Гномик",
        "Домик",
        "Ель",
        "Ёж",
        "Железная Дорога"
    ]
    
    @IBOutlet weak var TreeImageview: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    var game: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    func newRound ()
    {
        let word = listOfWords.removeFirst()
        game = Game (word: word, incorrectMovesRemaining:
            incorrectMovesAllowed  )
    }
    func updateUI ()  {
        let name = "Tree 5"
        TreeImageview.image = UIImage(named: name)
        scoreLabel.text = "Выигрыши: \(totalWins), Проигрыши: \(totalLosses)"
        
    }
    @IBAction func ButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    
}


