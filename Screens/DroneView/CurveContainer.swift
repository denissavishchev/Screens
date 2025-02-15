import SwiftUI

struct CurveContainer: Shape {
    func path(in rect: CGRect) -> Path {
        let padding = rect.maxX * 0.05
        let cornerRadius: CGFloat = 8
        
        var path = Path()
        
        let maxX = rect.maxX - padding // Reduce width
        let minX = rect.minX
        let maxY = rect.maxY
        
        path.move(to: CGPoint(x: minX + maxX * 0.05, y: maxY * 0.4))

        path.addLine(to: CGPoint(x: minX + maxX * 0.47, y: maxY * 0.4))
        path.addQuadCurve(to: CGPoint(x: minX + maxX * 0.53, y: maxY * 0.35),
                          control: CGPoint(x: minX + maxX * 0.51, y: maxY * 0.4))

        path.addLine(to: CGPoint(x: minX + maxX * 0.6, y: maxY * 0.14))
        path.addQuadCurve(to: CGPoint(x: minX + maxX * 0.64, y: maxY * 0.1),
                          control: CGPoint(x: minX + maxX * 0.61, y: maxY * 0.1))

        path.addArc(center: CGPoint(x: maxX - cornerRadius, y: maxY * 0.1 + cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(-90),
                    endAngle: .degrees(0),
                    clockwise: false)

        path.addLine(to: CGPoint(x: maxX, y: maxY - cornerRadius))

        path.addArc(center: CGPoint(x: maxX - cornerRadius, y: maxY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(0),
                    endAngle: .degrees(90),
                    clockwise: false)

        path.addLine(to: CGPoint(x: minX + maxX * 0.05 + cornerRadius, y: maxY))

        path.addArc(center: CGPoint(x: minX + maxX * 0.05 + cornerRadius, y: maxY - cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(90),
                    endAngle: .degrees(180),
                    clockwise: false)

        path.addLine(to: CGPoint(x: minX + maxX * 0.05, y: maxY * 0.4 + cornerRadius))

        path.addArc(center: CGPoint(x: minX + maxX * 0.05 + cornerRadius, y: maxY * 0.4 + cornerRadius),
                    radius: cornerRadius,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false)

        return path
    }
}
