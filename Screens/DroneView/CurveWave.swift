import SwiftUI

struct CurveWave: View {
    var body: some View {
        ZStack {
            CurveWaveOne()
                .stroke(.retroWhite.opacity(0.3), lineWidth: 1)
            CurveWaveTwo()
                .stroke(.droneYellow, lineWidth: 3)
                .shadow(color: .droneYellow, radius: 5)
        }
    }
}

struct CurveWaveOne: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * 0.3))
                
        path.addLine(to: CGPoint(x: rect.maxX * 0.42, y: rect.maxY * 0.3))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.48, y: rect.maxY * 0.25),
                          control: CGPoint(x: rect.maxX * 0.46, y: rect.maxY * 0.3))
        path.addLine(to: CGPoint(x: rect.maxX * 0.54, y: rect.maxY * 0.06))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.6, y: rect.minY + 2),
                          control: CGPoint(x: rect.maxX * 0.56, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + 2))

       return path
    }
}

struct CurveWaveTwo: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY * 0.3))
                
        path.addLine(to: CGPoint(x: rect.maxX * 0.42, y: rect.maxY * 0.3))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.48, y: rect.maxY * 0.25),
                          control: CGPoint(x: rect.maxX * 0.46, y: rect.maxY * 0.3))
        path.addLine(to: CGPoint(x: rect.maxX * 0.54, y: rect.maxY * 0.06))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.6, y: rect.minY + 2),
                          control: CGPoint(x: rect.maxX * 0.56, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX * 0.8, y: rect.minY + 2))

       return path
    }
}


