//
//  ViewController.swift
//  Laugh Track
//
//  Created by Jerry Gerou on 12/9/18.
//  Copyright © 2018 Sara Gerou. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    let soundArray = ["laugh_1", "laugh_2", "laugh_3", "laugh_4", "laugh_5"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func laughButton1Pressed(_ sender: UIButton) {
        playSound(soundFileName: soundArray[sender.tag - 1])
    }
    
    func playSound(soundFileName : String) {
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch let error as NSError {
            print(error)
        }
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
}

