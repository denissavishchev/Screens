//
//  WatchFourButtons.swift
//  Screens
//
//  Created by Devis on 29/12/2024.
//

import SwiftUI

struct WatchFourButtons: View {
    
    var isPressed: Bool
    var image: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .frame(width: 60, height: 60)
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [
                isPressed ? .watchBlue : .ampDark,
                isPressed ? .watchPurple : .ampWhite]),
                                            startPoint: .topLeading, endPoint: .bottomTrailing))
            .overlay(
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(isPressed ? .ampDarkWhite : .gray)
                    .frame(width: 30)
                
            )
            .shadow(color: isPressed ? .watchBlue.opacity(0.3) : .white, radius: 5, x: -5, y: -5)
            .shadow(color: isPressed ? .watchPurple.opacity(0.3) : .gray.opacity(0.8), radius: 5, x: 5, y: 5)
    }
}
