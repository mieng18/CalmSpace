//
//  MeditationViewModel.swift
//  CalmSpace
//
//  Created by mai nguyen on 7/8/23.
//

import Foundation


final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation){
        self.meditation = meditation
    }
}



