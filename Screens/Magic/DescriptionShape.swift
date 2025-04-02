import SwiftUI

struct DescriptionShape: Shape{
    func path(in rect: CGRect) -> Path{
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - 15, y: rect.minY))
        path.addArc(center: CGPoint(x: rect.maxX - 15, y: rect.minY + 15),
                    radius: 15,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 0),
                    clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + 50))
        path.addArc(center: CGPoint(x: rect.maxX, y: rect.minY + 60),
                    radius: 10,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: -180),
                    clockwise: true)
        path.addLine(to: CGPoint(x: rect.maxX - 10, y: rect.maxY - 10))
        
        path.addLine(to: CGPoint(x: rect.maxX - 20, y: rect.maxY - 20))
        path.addLine(to: CGPoint(x: rect.maxX - 20, y: rect.minY + 65))
        path.addArc(center: CGPoint(x: rect.maxX - 35, y: rect.minY + 65),
                    radius: 15,
                    startAngle: Angle(degrees: 0),
                    endAngle: Angle(degrees: -90),
                    clockwise: true)
        path.addLine(to: CGPoint(x: rect.minX + 60, y: rect.minY + 50))
        path.addArc(center: CGPoint(x: rect.minX + 60, y: rect.minY + 65),
                    radius: 15,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: -180),
                    clockwise: true)
        
        path.addLine(to: CGPoint(x: rect.minX + 45, y: rect.maxY - 40))
        path.addQuadCurve(
                    to: CGPoint(x: rect.minX + 80, y: rect.maxY - 20),
                    control: CGPoint(x: rect.minX + 45, y: rect.maxY - 20))
        
        path.addLine(to: CGPoint(x: rect.maxX - 20, y: rect.maxY - 20))
        path.addLine(to: CGPoint(x: rect.maxX - 20, y: rect.maxY - 10))
        
        path.addLine(to: CGPoint(x: rect.minX + 80, y: rect.maxY - 10))
        path.addQuadCurve(
                    to: CGPoint(x: rect.minX + 60, y: rect.maxY),
                    control: CGPoint(x: rect.minX + 70, y: rect.maxY - 10))
        path.addQuadCurve(
                    to: CGPoint(x: rect.minX + 10, y: rect.maxY - 20),
                    control: CGPoint(x: rect.minX + 10, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + 10, y: rect.minY + 60))
        path.addArc(center: CGPoint(x: rect.minX, y: rect.minY + 55),
                    radius: 10,
                    startAngle: Angle(degrees: 0),
                    endAngle: Angle(degrees: -90),
                    clockwise: true)
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + 40))
        path.addArc(center: CGPoint(x: rect.minX + 15, y: rect.minY + 15),
                    radius: 15,
                    startAngle: Angle(degrees: -180),
                    endAngle: Angle(degrees: -90),
                    clockwise: false)
        
        return path
    }
}
