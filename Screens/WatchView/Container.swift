//
//  Container.swift
//  Screens
//
//  Created by Devis on 29/12/2024.
//

import SwiftUI

struct Container: Shape{
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.midY - 50))
        path.addQuadCurve(to: CGPoint(x: rect.minX + 40, y: rect.midY * 0.45),
                          control: CGPoint(x: rect.minX * 0.15, y: rect.midY * 0.5))
        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 15))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + 50),
                          control: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - 50))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - 50, y: rect.maxY),
                          control: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + 50, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY - 50),
                          control: CGPoint(x: rect.minX, y: rect.maxY))
        return path
    }
}

