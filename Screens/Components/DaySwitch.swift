import SwiftUI

struct DaySwitch: View {
    
    @State private var isDay: Bool = false
    @State private var animateSize: Bool = false 
    
    var body: some View {
        ZStack(alignment: isDay ? .trailing : .topLeading) {
            DayCurve()
                .foregroundColor(.black)
            
            Circle()
                .frame(width: animateSize ? 120 : 50, height: animateSize ? 120 : 50)
                .foregroundColor(isDay ? .yellow : .blue)
                .padding(.top, 5)
                .padding(.bottom, 5)
                .padding(.leading, 5)
                .padding(.trailing, 10)
                .onTapGesture {
                    if isDay {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                            animateSize.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            withAnimation(.spring(duration: 0.3)) {
                                isDay.toggle()
                            }
                        }
                    } else {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            isDay.toggle()
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                                animateSize.toggle()
                            }
                        }
                    }
                }
        }
        .frame(maxWidth: .infinity, maxHeight: 140)
        .background(.gray)
        .padding(.horizontal, 18)
    }
}

#Preview {
    DaySwitch()
}

struct DayCurve: Shape {
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x: 30, y: 60))

        path.addArc(center: CGPoint(x: 30, y: 30),
                            radius: 30,
                            startAngle: .degrees(90),
                            endAngle: .degrees(270),
                            clockwise: false)
        path.addLine(to: CGPoint(x: rect.maxX - 70, y: rect.minY))
        path.addArc(center: CGPoint(x: rect.maxX - 70, y: 70),
                            radius: 70,
                            startAngle: .degrees(270),
                            endAngle: .degrees(150),
                            clockwise: false)
        
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: 60),
                          control: CGPoint(x: rect.maxX * 0.57, y: 60))

        path.move(to: CGPoint(x: 38, y: rect.maxY))
        path.addArc(center: CGPoint(x: 38, y: rect.maxY - 38),
                            radius: 38,
                            startAngle: .degrees(90),
                            endAngle: .degrees(270),
                            clockwise: false)
        path.addLine(to: CGPoint(x: rect.midX - 6, y: rect.maxY - 76))
        path.addQuadCurve(to: CGPoint(x: rect.midX + 48, y: rect.maxY - 25),
                          control: CGPoint(x: rect.maxX * 0.57, y: 62))
        path.addQuadCurve(to: CGPoint(x: rect.midX + 6, y: rect.maxY),
                          control: CGPoint(x: rect.midX + 60, y: rect.maxY))

        return path
    }
}
