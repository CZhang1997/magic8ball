//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Churong Zhang on 12/25/18.
//  Copyright © 2018 Churong Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let answerArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    var number: Int = 0
    @IBOutlet weak var answer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomAnswer()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func AskPress(_ sender: UIButton) {
        getRandomAnswer()
    }
    
    func getRandomAnswer()
    {
        number = Int.random(in: 0...4)
        if number == randomBallNumber {
            randomBallNumber = Int.random(in: 0...4);
        }
        else
        {
            randomBallNumber = number;
        }
        answer.image = UIImage(named: answerArray[randomBallNumber])
    }
}

