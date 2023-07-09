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
    
    static let data = Meditation(title: "1 Minute Meditation", description: "Allow your breath to flow naturally, without trying to control it. Observe the rhythm and depth of each breath.", duration: 70, track: "meditation-file", image: "forest-pic")
}
