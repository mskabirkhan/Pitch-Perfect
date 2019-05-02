//
//  PlaySoundVC.swift
//  Pitch Perfect
//
//  Created by Kabir on 02/05/2019.
//  Copyright © 2019 PersonalDevelopmentProject. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundVC: UIViewController {
    
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var vedarButton: UIButton!
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var revButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    var recordedAudioURL: URL!
    var audioFile:AVAudioFile!
    var audioEngine:AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum ButtonType: Int {
        case slow = 0, fast, chipmunk, vader, echo, reverb
    }
    
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch(ButtonType(rawValue: sender.tag)!) {
        case .slow:
            playSound(rate: 0.5)
        case .fast:
            playSound(rate: 1.5)
        case .chipmunk:
            playSound(pitch: 1000)
        case .vader:
            playSound(pitch: -1000)
        case .echo:
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
        
        configureUI(.playing)
        print("Play Sound Button Pressed")
        
    }
    
    @IBAction func stopButtonPressed(_ sender: Any) {
        stopAudio()
        print("Stop Audio Button Pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        vedarButton.imageView?.contentMode = .scaleAspectFit
        revButton.imageView?.contentMode = .scaleAspectFit
        echoButton.imageView?.contentMode = .scaleAspectFit
        chipmunkButton.imageView?.contentMode = .scaleAspectFit
        rabbitButton.imageView?.contentMode = .scaleAspectFit
        snailButton.imageView?.contentMode = .scaleAspectFit
        setupAudio()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureUI(.notPlaying)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
