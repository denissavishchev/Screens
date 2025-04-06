//
//  LineShapes.swift
//  Screens
//
//  Created by Devis on 06/04/2025.
//

import SwiftUI

struct TopLinesShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX - 32, y: rect.minY + 4))
        path.addLine(to: CGPoint(x: rect.maxX - 60, y: rect.minY + 30))
        path.addLine(to: CGPoint(x: rect.maxX - 80, y: rect.minY + 30))
        path.addLine(to: CGPoint(x: rect.maxX - 100, y: rect.minY + 45))
        path.addEllipse(in: CGRect(x: rect.maxX - 103, y: rect.minY + 43, width: 5, height: 5))

        path.move(to: CGPoint(x: rect.maxX - 27, y: rect.minY + 8))
        path.addLine(to: CGPoint(x: rect.maxX - 57, y: rect.minY + 37))
        path.addLine(to: CGPoint(x: rect.maxX - 58, y: rect.minY + 130))
        path.addLine(to: CGPoint(x: rect.maxX - 80, y: rect.minY + 150))
        path.addEllipse(in: CGRect(x: rect.maxX - 84, y: rect.minY + 149, width: 5, height: 5))
        
        path.move(to: CGPoint(x: rect.maxX - 22, y: rect.minY + 11))
        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 39))
        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 180))
        path.addEllipse(in: CGRect(x: rect.maxX - 52, y: rect.minY + 180, width: 5, height: 5))
       return path
    }
}

struct BottomLinesShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY - 12))
        path.addLine(to: CGPoint(x: rect.minX + 40, y: rect.maxY - 40))
        path.addLine(to: CGPoint(x: rect.minX + 40, y: rect.maxY - 180))
        path.addEllipse(in: CGRect(x: rect.minX + 37, y: rect.maxY - 185, width: 7, height: 7))

        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + 50, y: rect.maxY - 35))
        path.addLine(to: CGPoint(x: rect.minX + 50, y: rect.maxY - 130))
        path.addLine(to: CGPoint(x: rect.minX + 80, y: rect.maxY - 150))
        path.addEllipse(in: CGRect(x: rect.minX + 78, y: rect.maxY - 154, width: 7, height: 7))
        
        path.move(to: CGPoint(x: rect.minX + 18, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + 60, y: rect.maxY - 28))
        path.addLine(to: CGPoint(x: rect.minX + 80, y: rect.maxY - 28))
        path.addLine(to: CGPoint(x: rect.minX + 110, y: rect.maxY - 50))
        path.addEllipse(in: CGRect(x: rect.minX + 108, y: rect.maxY - 54, width: 7, height: 7))
       return path
    }
}
