//
//  ViewController.swift
//  AVAudioSessionSetCategorySwift
//
//  Created by coeur on 10/19/2018.
//  Copyright (c) 2018 coeur. All rights reserved.
//

import UIKit
import AVFoundation
import AVAudioSessionSetCategorySwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // AVAudioSessionSetCategorySwift example
        ViewController.example()
    }
    
    static func example() {
        let session = AVAudioSession.sharedInstance()
        do {
            if #available(iOS 10.0, *) {
                try session.setCategory(AVAudioSession.Category.playback, mode: .default, options: [])
            } else {
                // Swift 4.2 workaround: https://github.com/coeur/AVAudioSessionSetCategorySwift
                try session.setCategorySwift(AVAudioSession.Category.playback.rawValue)
            }
            try session.setActive(true)
        } catch {
            print("AVAudioSession.setCategory error: \(error)")
        }
    }
}
