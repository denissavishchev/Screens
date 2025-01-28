import SwiftUI

struct Screen: Shape {
    func path(in rect: CGRect) -> Path {
            var path = Path()

            path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.maxY),
                control: CGPoint(x: rect.midX, y: rect.minY + 100))
            
            return path
        }
}

struct ScreenLight: Shape {
    func path(in rect: CGRect) -> Path {
            var path = Path()

            path.move(to: CGPoint(x: rect.minX + 26, y: rect.minY + 26))
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX - 26, y: rect.minY + 26),
                control: CGPoint(x: rect.midX, y: rect.minY - 22))
            path.addLine(to: CGPoint(x: rect.maxX + 100, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX - 100, y: rect.maxY))
            
            return path
        }
}
