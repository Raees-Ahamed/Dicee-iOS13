//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1:
    UIImageView!

    @IBOutlet weak var diceImageView2:
    UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
        //in order to change the opacity of the button we can type the below code
        //diceImageView1.alpha = 0.5
        
        //diceImageView2.alpha = 0.5
    }
    
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        
        if(leftDiceNumber>5){
            leftDiceNumber = 0
        }
        else{
            diceImageView2.image =
            [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][rightDiceNumber]
             rightDiceNumber = leftDiceNumber - 1
        }
        if(rightDiceNumber < 0){
            leftDiceNumber = 5
        }
        else{
            diceImageView1.image =
                       [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
            leftDiceNumber = leftDiceNumber + 1
        }
    }
    
}

