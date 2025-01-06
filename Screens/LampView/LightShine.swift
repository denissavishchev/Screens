import SwiftUI

struct LightShine: Shape{
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX + 35, y: rect.minY + 215))
        path.addLine(to: CGPoint(x: rect.minX + 174, y: rect.minY + 215))

        path.addLine(to: CGPoint(x: rect.maxX - 60, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX - 110, y: rect.maxY))

        return path
    }
}
