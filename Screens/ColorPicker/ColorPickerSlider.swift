//
//  ColorPickerSlider.swift
//  Screens
//
//  Created by Devis on 27/03/2025.
//

import SwiftUI

struct ColorPickerSliderView: View {
    
    @State var currentColor: Color = .red
    @State var dragPosition: CGFloat = 20
    let barWidth: CGFloat = 200
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(currentColor)
                .frame(height: 50)
                .padding()
            
            ZStack{
                LinearGradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .pink], startPoint: .leading, endPoint: .trailing)
                    .frame(width: barWidth, height: 50)
                    .clipShape(.capsule)
                    .overlay(alignment: .leading){
                        Circle()
                            .stroke(lineWidth: 2)
                            .background(Circle().fill(currentColor))
                            .frame(width: 40, height: 40)
                            .offset(x: dragPosition - 15)
                            .gesture(
                            DragGesture()
                                .onChanged{value in
                                    withAnimation{
                                        dragPosition = max(20, min(value.location.x, barWidth - 30))
                                        currentColor = getColor(at: (dragPosition - 20) / (barWidth - 40))
                                    }
                                }
                            )
                    }
            }
        }
        .padding()
    }
    
    private func getColor(at position: CGFloat) -> Color{
        let colors: [Color] = [.red, .orange, .yellow, .green, .blue, .purple, .pink]
        let segment = 1 / CGFloat(colors.count - 1)
        let index = Int(position / segment)
        let progress = (position - CGFloat(index) * segment) / segment
        
        if index < colors.count - 1{
            let startColor = UIColor(colors[index])
            let endColor = UIColor(colors[index + 1])
            
            var r1: CGFloat = 0, g1: CGFloat = 0, b1: CGFloat = 0, a1: CGFloat = 0
            var r2: CGFloat = 0, g2: CGFloat = 0, b2: CGFloat = 0, a2: CGFloat = 0
            
            startColor.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
            endColor.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)
            
            let r = r1 + (r2 - r1) * progress
            let g = g1 + (g2 - g1) * progress
            let b = b1 + (b2 - b1) * progress
            
            return Color(red: Double(r), green: Double(g), blue: Double(b))
        }
        return colors.last ?? .white
    }
}

