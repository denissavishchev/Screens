//
//  RadialMenu.swift
//  Screens
//
//  Created by Devis on 30/03/2025.
//

import SwiftUI

struct RadialMenu: View {
    var body: some View {
        ZStack{
            ForEach(0..<6, id: \.self) { i in
                let angle = Double(i) / Double(6) * 2 * .pi
                let radius: CGFloat = 130
                
                RoundedTrapezoid(topWidthRatio: 0.6, cornerRadius: 10)
                    .frame(width: 100, height: 100)
                    .foregroundColor(.black)
                    .rotationEffect(.degrees(-90 + Double(i * 60)))
                    .offset(
                        x: radius * cos(angle),
                        y: radius * sin(angle)
                    )
                    
                    .background()
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 380)
        .background(.blue.opacity(0.1))
    }
}

#Preview {
    RadialMenu()
}

struct RoundedTrapezoid: Shape {
    var topWidthRatio: CGFloat
    var cornerRadius: CGFloat

    func path(in rect: CGRect) -> Path {
        let bottomWidth = rect.width
        let topWidth = bottomWidth * topWidthRatio
        let height = rect.height
        let xOffset = (bottomWidth - topWidth) / 2

        var path = Path()

        path.move(to: CGPoint(x: xOffset + cornerRadius, y: 0))
        path.addLine(to: CGPoint(x: xOffset + topWidth - cornerRadius, y: 0))
        path.addArc(center: CGPoint(x: xOffset + topWidth - cornerRadius, y: cornerRadius),
                    radius: cornerRadius, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: bottomWidth - cornerRadius + 10, y: height - cornerRadius))
        path.addArc(center: CGPoint(x: bottomWidth - cornerRadius, y: height - cornerRadius),
                    radius: cornerRadius, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: cornerRadius, y: height))
        path.addArc(center: CGPoint(x: cornerRadius, y: height - cornerRadius),
                    radius: cornerRadius, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: CGPoint(x: xOffset + cornerRadius - 10, y: cornerRadius))
        path.addArc(center: CGPoint(x: xOffset + cornerRadius, y: cornerRadius),
                    radius: cornerRadius, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}
