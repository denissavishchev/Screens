//
//  WatchButtonView.swift
//  Screens
//
//  Created by Devis on 29/12/2024.
//

import SwiftUI

struct WatchButtonView: View {
    
    var size: CGFloat
    var image: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: size, height: size)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.ampWhite, .ampDarkWhite]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .shadow(color: .white.opacity(0.8), radius: 5, x: -5, y: -5)
                .shadow(color: .gray.opacity(0.5), radius: 5, x: 5, y: 5)
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [.gray.opacity(0.2), .clear]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                .frame(width: size, height: size)
            Circle()
                .stroke(LinearGradient(gradient: Gradient(colors: [.clear, .ampDarkGray]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                .frame(width: size, height: size)
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: size * 0.4)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.ampDarkGray, .gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        }
        .padding(.top, 30)
        .padding(.trailing, 15)
    }
}
