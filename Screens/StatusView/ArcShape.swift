//
//  ArcShape.swift
//  Screens
//
//  Created by Devis on 16/03/2025.
//

import SwiftUI

struct ArcShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        let startAngle = Angle(degrees: 45)
        let endAngle = Angle(degrees: 170)

        path.addArc(center: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: true)
        
        path.move(to: CGPoint(x: rect.minX + 1, y: rect.maxY * 0.59))
        path.addLine(to: CGPoint(x: rect.minX - 15, y: rect.maxY * 0.59))
        path.addLine(to: CGPoint(x: rect.minX - 15, y: rect.maxY * 0.70))
        path.addLine(to: CGPoint(x: rect.minX - 30, y: rect.maxY * 0.70))

        path.move(to: CGPoint(x: rect.minX + 30, y: rect.maxY * 0.2))
        path.addLine(to: CGPoint(x: rect.minX - 10, y: rect.maxY * 0.2))
        path.addLine(to: CGPoint(x: rect.minX - 10, y: rect.minY - 80))
        path.addLine(to: CGPoint(x: rect.minX - 30, y: rect.minY - 80))
        
        path.move(to: CGPoint(x: rect.maxX * 0.9, y: rect.maxY * 0.2))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.2))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.1))
        path.addLine(to: CGPoint(x: rect.maxX + 40, y: rect.maxY * 0.1))
        path.addLine(to: CGPoint(x: rect.maxX + 40, y: rect.maxY * 0.07))
        path.addLine(to: CGPoint(x: rect.maxX + 10, y: rect.maxY * 0.07))
        
        path.move(to: CGPoint(x: rect.maxX * 0.86, y: rect.maxY * 0.86))
        path.addLine(to: CGPoint(x: rect.maxX * 0.86, y: rect.maxY + 100))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY + 100))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY + 200))
        return path
    }
}
