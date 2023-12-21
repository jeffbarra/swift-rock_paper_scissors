//
//  ViewController.swift
//  PlayingAround
//
//  Created by Jeff Barra on 12/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var moveLabel: UILabel!
    
    var myHand = ""
    let hands = ["👊", "🤚", "✌️"]
    let losesAgainst = ["👊": "✌️", "🤚": "👊", "✌️": "🤚"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // Select Rock
    @IBAction func selectRock(_ sender: Any) {
        myHand = "👊"
        moveLabel.text = "You've selected \(myHand)"
    }
    // Select Paper
    @IBAction func selectPaper(_ sender: Any) {
        myHand = "🤚"
        moveLabel.text = "You've selected \(myHand)"
    }
    // Select Scissor
    @IBAction func selectScissors(_ sender: Any) {
        myHand = "✌️"
        moveLabel.text = "You've selected \(myHand)"
    }
    
    // Play Button
    @IBAction func playButton(_ sender: Any) {
        // crate computer hand method
        let iPhoneHand = hands.randomElement()!
        
        var message = ""
        
        // compare to myHand
        if iPhoneHand == myHand {
            message = "It's a tie!"
        } else if losesAgainst[iPhoneHand] == myHand {
            message = "iPhone wins!"
        } else {
            message = "You won!"
        }
        
        moveLabel.text = "You've selected \(myHand)\niPhone selected \(iPhoneHand)\n\(message)"
    }
    
}

