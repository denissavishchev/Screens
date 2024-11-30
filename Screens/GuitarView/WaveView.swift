//
//  LineView.swift
//  Screens
//
//  Created by Devis on 30/11/2024.
//

import SwiftUI

struct Wave: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY + 20))
                
        path.addCurve(
            to: CGPoint(x: rect.width * 0.35, y: rect.minY),
            control1: CGPoint(x: rect.width * 0.1, y: rect.minY + 20),
            control2: CGPoint(x: rect.width * 0.1, y: rect.minY - 40)
        )
        
        path.addCurve(
            to: CGPoint(x: rect.maxX * 0.65, y: rect.minY),
            control1: CGPoint(x: rect.width * 0.5, y: rect.minY + 100),
            control2: CGPoint(x: rect.width * 0.5, y: rect.minY + 120)
        )
        
        path.addCurve(
            to: CGPoint(x: rect.maxX, y: rect.minY),
            control1: CGPoint(x: rect.width * 0.8, y: rect.minY - 120),
            control2: CGPoint(x: rect.width * 0.95, y: rect.minY)
        )

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
       return path
    }
}

