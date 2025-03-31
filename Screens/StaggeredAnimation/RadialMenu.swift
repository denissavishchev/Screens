//
//  RadialMenu.swift
//  Screens
//
//  Created by Devis on 30/03/2025.
//

import SwiftUI

struct RadialMenu: View {
    
    @State private var selectedIndex: Int = 0
    @State private var isAnimating: Bool = false
    @State private var animatingIndex: CGFloat = 1
    func icons(_ index: Int) -> String {
        let icon = ["photo.fill", "music.note.house", "book.closed.fill", "mappin.circle", "video", "message.fill"]
        return icon[index % icon.count]
    }
    @State private var selectedIcon: String = "photo.fill"
    
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 330, height: 330)
                .foregroundColor(.cyan)
            ForEach(0..<180, id: \.self) { i in
                let angle = Double(i) / Double(180) * 2 * .pi
                let radius: CGFloat = 95
                
                Rectangle()
                    .frame(width: 3, height: 136)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(-90 + Double(i) * 2))
                    .offset(
                        x: radius * cos(angle),
                        y: radius * sin(angle)
                    )
            }
            
            ForEach(0..<6, id: \.self) { i in
                let angle = Double(i) / Double(6) * 2 * .pi
                let radius: CGFloat = 95
                
                ZStack {
                    RoundedTrapezoid()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(LinearGradient(colors: [.gray, .black.opacity(0.7)], startPoint: .bottom, endPoint: .top))
                        .rotationEffect(.degrees(-90 + Double(i * 60)))
                        .offset(
                            x: radius * cos(angle),
                            y: radius * sin(angle)
                        )
                        .onTapGesture {
                            if !isAnimating {
                                animateSelection(from: selectedIndex, to: i)
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                    withAnimation {
                                        selectedIcon = icons(i)
                                    }
                                }
                            }
                        }
                    .shadow(color: .black.opacity(0.5), radius: 4, x: 2, y: 2)
                    Image(systemName: icons(i))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .offset(
                            x: (radius + 20) * cos(angle),
                            y: (radius + 20) * sin(angle)
                        )
                        .shadow(color: .black, radius: 1.5)
                        .shadow(color: .black.opacity(0.8), radius: 10, x: 5, y: 5)
                }
            }
            if selectedIndex >= 0 {
                let angle = Double(selectedIndex) / Double(6) * 2 * .pi
                let radius: CGFloat = 95
                    
                ZStack {
                    RoundedTrapezoid()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(LinearGradient(colors: [.orange, .orange, .orange, .red], startPoint: .top, endPoint: .bottom))
                            .rotationEffect(.degrees(-90 + Double(selectedIndex * 60)))
                            .offset(
                                x: radius * cos(angle),
                                y: radius * sin(angle)
                            )
                        .shadow(color: .black.opacity(0.5), radius: 4, x: 2, y: 2)
                    Image(systemName: selectedIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .offset(
                            x: (radius + 20) * cos(angle),
                            y: (radius + 20) * sin(angle)
                        )
                        .shadow(color: .black, radius: 1.5)
                        .shadow(color: .black.opacity(0.8), radius: 10, x: 5, y: 5)
                }
            }
            ZStack {
                Circle()
                    .stroke(lineWidth: 10)
                    .frame(width: 108, height: 108)
                    .foregroundStyle(LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(color: .black, radius: 10)
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(LinearGradient(colors: [.white, .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .shadow(color: .black.opacity(0.8), radius: 10, x: 5, y: 5)
                    .shadow(color: .black.opacity(0.3), radius: 10, x: -5, y: -5)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 380)
    }
    
    private func animateSelection(from start: Int, to end: Int) {
        guard start != end else { return }
        
        isAnimating = true
        let step = start < end ? 1 : -1
        
        DispatchQueue.global().async {
            for i in stride(from: start, to: end + step, by: step) {
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(abs(i - start)) * 0.2) {
                    withAnimation(.easeInOut(duration: 0.5)){
                        selectedIndex = i
                    }
                    if i == end {
                        withAnimation{
                            isAnimating = false
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    RadialMenu()
}

