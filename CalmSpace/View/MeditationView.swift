//
//  MeditationView.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/8/23.
//

import SwiftUI

struct MeditationView: View {
    
    @State private var showPlayer = false
    
    var body: some View {
        
        VStack {
            Image("rocks-stacked")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height/3)
            
            
            
            ZStack {
                Color(red:24/255, green: 23/255, blue: 22/255)
                VStack(alignment: .leading,spacing:24) {
                    VStack(alignment: .leading,spacing:8) {
                        Text("Music")
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    Text("1 Minute Relaxing Meditation")
                        .font(.title)
                    
                   
                    
                    Button {
                        self.showPlayer = true
                        
                    }label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)

                            
                        
                    }
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(20)

                
                    
                    Text("Allow your breath to flow naturally, without trying to control it. Observe the rhythm and depth of each breath.")
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $showPlayer) {
                PlayerView()
            }
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
