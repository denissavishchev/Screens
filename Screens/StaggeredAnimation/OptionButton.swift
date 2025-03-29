//
//  OptionButton.swift
//  Screens
//
//  Created by Devis on 29/03/2025.
//

import SwiftUI

struct OptionButton: View {
    
    let icon: String
    let offsetX: Double
    let offsetY: Double
    let isLeft: Bool
    @Binding var isOn: Bool
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        ZStack(alignment: isLeft ? .trailing : .leading){
            RoundedRectangle(cornerRadius: 50)
                .frame(width: isOn ? 335 : 100, height: 100)
                .foregroundStyle(LinearGradient(colors: [.white, .gray.opacity(0.5)], startPoint: .bottomLeading, endPoint: .topTrailing))
                .shadow(color: .black.opacity(0.55), radius: 10, x: -20, y: 20)
                .overlay(alignment: isLeft ? .trailing : .leading){
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 55, height: 55)
                        .foregroundColor(.vermilion.opacity(0.8))
                        .padding(.horizontal, 22)
                }
                .animation(.linear(duration: 1).delay(isOn ? 0 : 0.5), value: isOn)
            RoundedRectangle(cornerRadius: 50)
                .trim(from: 0.0, to: progress)
                .stroke(LinearGradient(colors: [.vermilion.opacity(0.5), .optionBlue.opacity(0.7)], startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .frame(width: 325, height: 90)
                .padding(.horizontal, 5)
                .animation(.linear(duration: 0.5).delay(isOn ? 1 : 0), value: isOn)
                }
                .offset(x: isOn ? 10 : isLeft ? offsetX - 225 : offsetX, y: offsetY)
                        .onTapGesture {
                            isOn.toggle()
                            progress = isOn ? 1 : 0
                        }

    }
}
