//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Kabir on 01/05/2019.
//  Copyright © 2019 PersonalDevelopmentProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        
    }

    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        print("viewWillAppear called")
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }
    
   
    
    @IBAction func stopRecording(_ sender: Any) {
          recordButton.isEnabled = false
        stopRecordingButton.isEnabled = true
        recordingLabel.text = "Tap to Record"
    }
    
}

