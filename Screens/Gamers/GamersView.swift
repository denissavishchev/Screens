import SwiftUI

struct GamersView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            Circle()
                .frame(width: 135, height: 135)
                .offset(y: -10)
            GameContainer()
        }
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(.blue)
        .padding(.horizontal, 12)
    }
}

#Preview {
    GamersView()
}

struct GameContainer: Shape {
    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 20
        
        var path = Path()
        
        let maxX = rect.maxX
        let minX = rect.minX
        let maxY = rect.maxY
        
        path.move(to: CGPoint(x: minX, y: maxY * 0.55))

        path.addArc(center: CGPoint(x: minX + cornerRadius, y: maxY * 0.45 + cornerRadius),
                            radius: cornerRadius,
                            startAngle: .degrees(180),
                            endAngle: .degrees(-90),
                            clockwise: false)

        path.addQuadCurve(to: CGPoint(x: maxX * 0.39, y: maxY * 0.1),
                          control: CGPoint(x: maxX * 0.4, y: maxY * 0.5))
        
        path.addArc(center: CGPoint(x: maxX * 0.39 + cornerRadius, y: maxY * 0.05 + cornerRadius),
                            radius: cornerRadius,
                            startAngle: .degrees(180),
                            endAngle: .degrees(-90),
                            clockwise: false)

        path.addLine(to: CGPoint(x: maxX * 0.89 + cornerRadius, y: maxY * 0.05))
        
        path.addArc(center: CGPoint(x: maxX * 0.89 + cornerRadius, y: maxY * 0.05 + cornerRadius),
                            radius: cornerRadius,
                            startAngle: .degrees(-90),
                            endAngle: .degrees(0),
                            clockwise: false)
        path.addLine(to: CGPoint(x: maxX, y: maxY * 0.92))
        path.addArc(center: CGPoint(x: maxX * 0.89 + cornerRadius, y: maxY - cornerRadius),
                            radius: cornerRadius,
                            startAngle: .degrees(0),
                            endAngle: .degrees(90),
                            clockwise: false)
        path.addLine(to: CGPoint(x: minX + cornerRadius, y: maxY))
        path.addArc(center: CGPoint(x: minX + cornerRadius, y: maxY - cornerRadius),
                            radius: cornerRadius,
                            startAngle: .degrees(90),
                            endAngle: .degrees(180),
                            clockwise: false)

        return path
    }
}

