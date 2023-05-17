//
//  ViewController.swift
//  Dicee
//
//  Created by Marcelo Hirota on 17/5/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!

    var i = 0
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        i = Int.random(in: 0...4)
        diceImageView1.image = diceArray[i]
        i = Int.random(in: 0...4)
        diceImageView2.image = diceArray[i]
    }
    
}

