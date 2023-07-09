//
//  CalmSpaceApp.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/8/23.
//

import SwiftUI

@main
struct CalmSpaceApp: App {
    @StateObject var audioManager = AudioManager()
    var body: some Scene {
        WindowGroup {
           ContentView()
                .environmentObject(audioManager)
        }
    }
}
