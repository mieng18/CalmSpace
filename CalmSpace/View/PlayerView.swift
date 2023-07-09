//
//  PlayerView.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/8/23.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var value: Double = 0.0
    var body: some View {
        
        ZStack {
            Image("forest-pic")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing:32) {
                
                HStack{
                    Button{
                        
                    }label: {
                        Image(systemName: "xmarl.circle.fill")
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
                
            }
            .padding(20)
        }
        .ignoresSafeArea()

    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
