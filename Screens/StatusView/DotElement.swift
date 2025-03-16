//
//  DotElement.swift
//  Screens
//
//  Created by Devis on 16/03/2025.
//

import SwiftUI

struct DotElement: View {
    
    let offsetX: CGFloat
    let offsetY: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 0.5)
                .frame(width: 25, height: 25)
                .foregroundStyle(LinearGradient(colors: [.black.opacity(0.8), .gray], startPoint: .top, endPoint: .bottom))
                .offset(x: offsetX, y: offsetY)
            Circle()
                .frame(width: 25, height: 25)
                .foregroundStyle(LinearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom))
                .offset(x: offsetX, y: offsetY)
            Circle()
                .frame(width: 16, height: 16)
                .foregroundStyle(LinearGradient(colors: [.turco, .turco.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .offset(x: offsetX, y: offsetY)
                .shadow(color: .black.opacity(0.8), radius: 1)
        }
    }
}
