//
//  ViewController.swift
//  HelloMyApp
//
//  Created by Phong Toan Huu on 5/17/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

    var diceIndex1 = 0
    var diceIndex2 = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDice()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice(){
        diceIndex1 = Int.random(in: 0 ... 5)
        diceIndex2 = Int.random(in: 0 ... 5)
        diceImageView1.image = UIImage(named: diceArray[diceIndex1])
        diceImageView2.image = UIImage(named: diceArray[diceIndex2])
    }
    
}

