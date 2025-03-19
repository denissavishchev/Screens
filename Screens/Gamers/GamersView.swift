import SwiftUI

struct GamersView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading){
                CircleContaimer()
                    .stroke(LinearGradient(colors: [.droneYellow.opacity(0.8), .icyWhite], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                    .offset(y: -10)
                    .shadow(color: .ampWhite, radius: 10, x: 0)
                GameContainer()
                    .foregroundStyle(LinearGradient(colors: [.droneYellow.opacity(0.55), .princeBlue], startPoint: .topLeading, endPoint: .bottomTrailing))
                HStack {
                    Spacer()
                    Image("Prince")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .shadow(color: .black, radius: 10, x: 5, y: 5)
                }
                VStack{
                    Spacer()
                    Image("PrinceLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .shadow(color: .icyGray, radius: 10, x: 5)
                }
                .frame(height: 280)
                .padding(.leading, 12)
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
        .padding(.horizontal, 12)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    GamersView()
}

struct CircleContaimer: Shape{
    func path(in rect: CGRect) -> Path {
        let cornerRadius: CGFloat = 67
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius),
                            radius: cornerRadius,
                            startAngle: .degrees(0),
                            endAngle: .degrees(270),
                            clockwise: false)
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + 2.5),
                            radius: 2.5,
                            startAngle: .degrees(-90),
                            endAngle: .degrees(90),
                            clockwise: false)
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius),
                            radius: cornerRadius - 5,
                            startAngle: .degrees(270),
                            endAngle: .degrees(0),
                            clockwise: true)
        path.addArc(center: CGPoint(x: rect.minX + cornerRadius * 2 - 2.5, y: rect.minY + cornerRadius),
                            radius: 2.5,
                            startAngle: .degrees(-180),
                            endAngle: .degrees(0),
                            clockwise: false)

        
        return path
    }
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

