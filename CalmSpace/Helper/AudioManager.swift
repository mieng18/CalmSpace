//
//  AudioManager.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/9/23.
//

import SwiftUI
import AVKit
import Foundation



final class AudioManager: ObservableObject{
    
    var player: AVAudioPlayer?
    
    func startPlayer(track: String,isPreview: Bool = false) {
        guard let url = Bundle.main.url(forResource: track, withExtension: "mp3") else {return}
    
        
        do {
            
            try AVAudioSession.sharedInstance().setCategory(.playback,mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf:url)
                if isPreview{
                    player?.prepareToPlay()
                } else {
                    player?.play()

                }
                    
            }catch {
            
            print("Fail to initilize player", error)
        }
    }
    
    
}
