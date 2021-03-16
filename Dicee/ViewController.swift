//
//  ViewController.swift
//  Dicee
//
//  Created by Arindam Karmakar on 13/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.alpha = 0.2
        diceImageView2.alpha = 0.2
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        let imageList = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = imageList.shuffled()[Int.random(in: 0...5)]
        diceImageView2.image = imageList.shuffled().randomElement()
        
        diceImageView1.alpha = 1.0
        diceImageView2.alpha = 1.0
    }

}

