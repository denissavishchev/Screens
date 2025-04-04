import SwiftUI

struct MouseShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * 0.02))
        path.addLine(to: CGPoint(x: rect.maxX * 0.15, y: rect.maxY * 0.02))
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.9, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.95, y: rect.maxY * 0.02))
        path.addLine(to: CGPoint(x: rect.maxX * 0.95, y: rect.maxY * 0.3))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.33))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.5))
        path.addLine(to: CGPoint(x: rect.maxX * 0.95, y: rect.maxY * 0.53))
        path.addLine(to: CGPoint(x: rect.maxX * 0.95, y: rect.maxY * 0.96))
        path.addLine(to: CGPoint(x: rect.maxX * 0.87, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))

       return path
    }
}

struct TringleShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))


       return path
    }
}
