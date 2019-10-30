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
        
        if randRed >= randGreen && randRed {
            
            changeColor()
            playerScore += 1
            userScore.text = "\(playerScore)"
        } else {
            changeColor()
            playerScore -= 1
            userScore.text = "\(playerScore)"
        }
        
    }
    
    
    @IBAction func blue(_ blueButton: UIButton) {
        if randBlue >= randRed && randBlue >= randGreen {
            changeColor()
            playerScore += 1
            userScore.text = "\(playerScore)"
        } else {
            changeColor()
            playerScore -= 1
            userScore.text = "\(playerScore)"
        }
    }
    
    
    
    
    @IBAction func green(_ greenButton: UIButton) {
        if randGreen >= randBlue && randGreen >= randRed {
            changeColor()
            playerScore += 1
            userScore.text = "\(playerScore)"
        } else { changeColor()
            playerScore -= 1
            userScore.text = "\(playerScore)"
            
        }
    }
    
    
    
    @IBOutlet weak var initView: UIView!
    
    
    @IBOutlet weak var userScore: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      
        changeColor()
         
            }

    
    var playerScore = 0
    
    
    func changeColor () {
        
        
         let randRed = CGFloat.random(in: 0...1)
         let randBlue = CGFloat.random(in: 0...1)
         let randGreen = CGFloat.random(in: 0...1)
         
         let myColor = UIColor(red: randRed, green: randGreen, blue: randBlue, alpha: 1)
        
        initView.backgroundColor = myColor
        

            }
        }
    
    
    
    
    
    
    



