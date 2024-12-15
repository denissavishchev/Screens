//
//  CarouseleViewModel.swift
//  Screens
//
//  Created by Devis on 15/12/2024.
//

import SwiftUI

class CarouselViewModel: ObservableObject {
    
    @Published var cards = [
        CardModel(cardColor: .blue, title: "Neurobics for your mind"),
        CardModel(cardColor: .purple, title: "Brush up you hygine"),
        CardModel(cardColor: .green, title: "Don't skip breakfast"),
        CardModel(cardColor: .yellow, title: "Rush and rest balance"),
        CardModel(cardColor: .orange, title: "Work up your mind"),
    ]
    
}

