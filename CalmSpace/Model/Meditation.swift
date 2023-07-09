//
//  Meditation.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/8/23.
//

import SwiftUI

struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "5 Minute Meditation", description: "Allow your breath to flow naturally, without trying to control it. Observe the rhythm and depth of each breath.", duration: 317, track: "relax-music", image: "forest-pic")
}
