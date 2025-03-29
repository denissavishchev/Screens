//
//  OptionLine.swift
//  Screens
//
//  Created by Devis on 29/03/2025.
//

import SwiftUI

struct OptionLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX * 0.4, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.17, y: rect.minY))
        path.addArc(center: CGPoint(x: rect.maxX * 0.17, y: rect.minY + 60),
                    radius: 60,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 90),
                    clockwise: true)
        path.addLine(to: CGPoint(x: rect.maxX * 0.82, y: rect.minY + 120))
        path.addArc(center: CGPoint(x: rect.maxX * 0.82, y: rect.minY + 180),
                    radius: 60,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 90),
                    clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX * 0.17, y: rect.minY + 240))
        path.addArc(center: CGPoint(x: rect.maxX * 0.17, y: rect.minY + 300),
                    radius: 60,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 90),
                    clockwise: true)
        path.addLine(to: CGPoint(x: rect.maxX * 0.82, y: rect.minY + 360))
        path.addArc(center: CGPoint(x: rect.maxX * 0.82, y: rect.minY + 420),
                    radius: 60,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 90),
                    clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX * 0.6, y: rect.minY + 480))
        return path
    }
}
