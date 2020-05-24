//
//  ViewController.swift
//  HelloMyApp
//
//  Created by Phong Toan Huu on 5/17/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    var selectedSoundFileName : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag - 1]
        playSound()
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
    
}

