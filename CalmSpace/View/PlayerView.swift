//
//  PlayerView.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/8/23.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        ZStack {
            Image("forest-pic")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            
            // MARK: Blur View
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing:32) {
                
                HStack{
                    Button{
                        dismiss()
                        
                    }label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size:36))
                            .foregroundColor(.white)
                        
                    }
                    
                    Spacer()
                }
                
                // MARK: Title
                
                Text("1 Minute Relaxing Meditation")
                    .font(.title)
                
                Spacer()
                
                VStack(spacing:5 ){
                    // MARK: Playback Timeline
                    
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    // MARK: Playback Timeline
                    
                    HStack {
                        Text("0:00")
                        
                        Spacer()
                        
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
                
                HStack{
                    PlaybackControlButton(systemName: "repeat") {
                       
                    }
                    Spacer()
                    
                    PlaybackControlButton(systemName: "gobackward.10") {
                       
                    }
                    
                    Spacer()

                    PlaybackControlButton(systemName: "play.circle.fill") {
                       
                    }
                    
                    Spacer()
                    
                    PlaybackControlButton(systemName: "goforward.10") {
                       
                    }
                    
                    Spacer()
                    
                    PlaybackControlButton(systemName: "stop.fill") {
                       
                    }
                }
                
            }
            .padding(20)
        }

    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
