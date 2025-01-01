import SwiftUI

struct GreenContainer: Shape{
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY * 0.55))
        path.addQuadCurve(to: CGPoint(x: rect.minX + 40, y: rect.minY + 82),
                          control: CGPoint(x: rect.minX, y: rect.minY + 82))
        path.addLine(to: CGPoint(x: rect.maxX - 130, y: rect.minY + 82))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - 80, y: rect.minY + 35),
                          control: CGPoint(x: rect.maxX - 80, y: rect.minY + 85))
        path.addLine(to: CGPoint(x: rect.maxX - 41, y: rect.minY + 50))
        path.addLine(to: CGPoint(x: rect.maxX - 41, y: rect.minY + 123))
        path.addLine(to: CGPoint(x: rect.maxX - 81, y: rect.minY + 123))
        path.addLine(to: CGPoint(x: rect.maxX - 81, y: rect.maxY - 50))
        path.addQuadCurve(to: CGPoint(x: rect.maxX - 131, y: rect.maxY),
                          control: CGPoint(x: rect.maxX - 81, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + 50, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY - 50),
                          control: CGPoint(x: rect.minX, y: rect.maxY))
        return path
    }
}
