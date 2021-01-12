//
//  ViewController.swift
//  Concentration
//
//  Created by Kairzhan Kural on 1/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cards: [UIButton]!
    
    let emojies = ["🐶", "🐱", "🦉", "🐱", "🐰", "🐶", "🎯", "🦉", "👻", "👻", "🐰", "🎯",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cards.firstIndex(of: sender) {
            flipCard(with: emojies[cardNumber], on: sender)
        }
    }
    
    func flipCard(with emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = .orange
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = .white
        }
    }
    
}

