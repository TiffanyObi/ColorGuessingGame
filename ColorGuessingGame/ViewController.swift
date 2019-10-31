//
//  ViewController.swift
//  ColorGuessingGame
//
//  Created by Tiffany Obi on 10/29/19.
//  Copyright © 2019 Tiffany Obi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randRed: CGFloat = 0.0
    var randBlue: CGFloat = 0.0
    var randGreen: CGFloat = 0.0
    
    
    
    @IBAction func red(_ redButton: UIButton) {
        
        if randRed >= randGreen && randRed >= randBlue {
            changeColor()
            playerScore += 1
            userScore.text = "Yay! Your score is \(playerScore)"
        } else {
            changeColor()
            playerScore -= 1
            userScore.text = "Uh Oh! That's Wrong! \(playerScore)"
        }
        if playerScore < 0 {
            userScore.text = "Sorry, You Lose! Press New Game To Play Again!"
            disableButton()
        }
    }
    
    @IBAction func blue(_ blueButton: UIButton) {
        
        if randBlue >= randGreen && randBlue >= randRed {
            changeColor()
            playerScore += 1
            userScore.text = "Yay! Your score is \(playerScore)"
        } else {
            changeColor()
            playerScore -= 1
            userScore.text = "Uh Oh! That's Wrong! \(playerScore)"
        }
        if playerScore < 0 {
            userScore.text = "Sorry, You Lose! Press New Game To Play Again!"
            disableButton()
        }
    }
    
    
    
    
    @IBAction func green(_ greenButton: UIButton) {
        if randGreen >= randRed && randGreen >= randBlue {
            changeColor()
            playerScore += 1
            userScore.text = "Yay! Your score is \(playerScore)"
        } else {
            changeColor()
            playerScore -= 1
            userScore.text = "Uh Oh! That's Wrong! \(playerScore)"
        }
        
        if playerScore < 0 {
            userScore.text = "Sorry, You Lose! Press New Game To Play Again!"
            disableButton()
        }
    }
    
    
    @IBOutlet weak var initView: UIView!
    
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var userScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        changeColor()
        
    }
    
    
    var playerScore = 0
    
    
    
    func changeColor () {
        
        
        randRed = CGFloat.random(in: 0...1)
        randBlue = CGFloat.random(in: 0...1)
        randGreen = CGFloat.random(in: 0...1)
        
        let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        
        initView.backgroundColor = myColor
        
        
    }
    
    func disableButton () {
        redButton.isEnabled = false
        greenButton.isEnabled = false
        blueButton.isEnabled = false
        
    }
    
}













