import SwiftUI

struct DaySwitch: View {
    
    @State private var isDay: Bool = false
    @State private var animateSize: Bool = false 
    
    var body: some View {
        ZStack(alignment: isDay ? .trailing : .bottom) {
            SteamCurve()
                .foregroundColor(.black)
                .frame(height: 170)
                .offset(y: -40)
            Circle()
                .frame(width: 60, height: 60)
//            Circle()
//                .frame(width: animateSize ? 120 : 50, height: animateSize ? 120 : 50)
//                .foregroundColor(isDay ? .yellow : .blue)
//                .padding(.top, 5)
//                .padding(.bottom, 5)
//                .padding(.leading, 5)
//                .padding(.trailing, 10)
//                .onTapGesture {
//                    if isDay {
//                        withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
//                            animateSize.toggle()
//                        }
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//                            withAnimation(.spring(duration: 0.3)) {
//                                isDay.toggle()
//                            }
//                        }
//                    } else {
//                        withAnimation(.easeInOut(duration: 0.3)) {
//                            isDay.toggle()
//                        }
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
//                            withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
//                                animateSize.toggle()
//                            }
//                        }
//                    }
//                }
        }
        .frame(maxWidth: .infinity, maxHeight: 140)
        .background(.gray)
        .padding(.horizontal, 18)
    }
}

#Preview {
    DaySwitch()
}

struct SteamCurve: Shape{
    func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.97247*width, y: 0.81143*height))
            path.addLine(to: CGPoint(x: 0.9713*width, y: 0.80281*height))
            path.addLine(to: CGPoint(x: 0.97247*width, y: 0.81143*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.63395*width, y: 0.99041*height))
            path.addLine(to: CGPoint(x: 0.63512*width, y: 0.99904*height))
            path.addLine(to: CGPoint(x: 0.63395*width, y: 0.99041*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.02619*width, y: 0.81233*height))
            path.addLine(to: CGPoint(x: 0.02737*width, y: 0.8037*height))
            path.addLine(to: CGPoint(x: 0.02619*width, y: 0.81233*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.41011*width, y: 0.93266*height))
            path.addLine(to: CGPoint(x: 0.41396*width, y: 0.93736*height))
            path.addLine(to: CGPoint(x: 0.41011*width, y: 0.93266*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.41396*width, y: 0.93736*height))
            path.addCurve(to: CGPoint(x: 0.49488*width, y: 0.84821*height), control1: CGPoint(x: 0.43071*width, y: 0.88384*height), control2: CGPoint(x: 0.46068*width, y: 0.84821*height))
            path.addLine(to: CGPoint(x: 0.49488*width, y: 0.83036*height))
            path.addCurve(to: CGPoint(x: 0.40626*width, y: 0.92797*height), control1: CGPoint(x: 0.45742*width, y: 0.83036*height), control2: CGPoint(x: 0.42458*width, y: 0.86941*height))
            path.addLine(to: CGPoint(x: 0.41396*width, y: 0.93736*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.49488*width, y: 0.84821*height))
            path.addCurve(to: CGPoint(x: 0.57633*width, y: 0.93912*height), control1: CGPoint(x: 0.52944*width, y: 0.84821*height), control2: CGPoint(x: 0.5597*width, y: 0.88463*height))
            path.addLine(to: CGPoint(x: 0.58409*width, y: 0.9299*height))
            path.addCurve(to: CGPoint(x: 0.49488*width, y: 0.83036*height), control1: CGPoint(x: 0.56589*width, y: 0.87027*height), control2: CGPoint(x: 0.53275*width, y: 0.83036*height))
            path.addLine(to: CGPoint(x: 0.49488*width, y: 0.84821*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.9713*width, y: 0.80281*height))
            path.addLine(to: CGPoint(x: 0.63277*width, y: 0.98179*height))
            path.addLine(to: CGPoint(x: 0.63512*width, y: 0.99904*height))
            path.addLine(to: CGPoint(x: 0.97364*width, y: 0.82005*height))
            path.addLine(to: CGPoint(x: 0.9713*width, y: 0.80281*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.4994*width, y: 0.00893*height))
            path.addCurve(to: CGPoint(x: 0.99288*width, y: 0.72943*height), control1: CGPoint(x: 0.73186*width, y: 0.00893*height), control2: CGPoint(x: 0.92841*width, y: 0.31234*height))
            path.addLine(to: CGPoint(x: 1.00153*width, y: 0.72422*height))
            path.addCurve(to: CGPoint(x: 0.4994*width, y: -0.00893*height), control1: CGPoint(x: 0.93594*width, y: 0.29983*height), control2: CGPoint(x: 0.73595*width, y: -0.00893*height))
            path.addLine(to: CGPoint(x: 0.4994*width, y: 0.00893*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.00578*width, y: 0.73038*height))
            path.addCurve(to: CGPoint(x: 0.4994*width, y: 0.00893*height), control1: CGPoint(x: 0.07009*width, y: 0.3128*height), control2: CGPoint(x: 0.26677*width, y: 0.00893*height))
            path.addLine(to: CGPoint(x: 0.4994*width, y: -0.00893*height))
            path.addCurve(to: CGPoint(x: -0.00288*width, y: 0.72519*height), control1: CGPoint(x: 0.26267*width, y: -0.00893*height), control2: CGPoint(x: 0.06256*width, y: 0.3003*height))
            path.addLine(to: CGPoint(x: 0.00578*width, y: 0.73038*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.35798*width, y: 0.97851*height))
            path.addLine(to: CGPoint(x: 0.02737*width, y: 0.8037*height))
            path.addLine(to: CGPoint(x: 0.02502*width, y: 0.82095*height))
            path.addLine(to: CGPoint(x: 0.35564*width, y: 0.99576*height))
            path.addLine(to: CGPoint(x: 0.35798*width, y: 0.97851*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.97364*width, y: 0.82005*height))
            path.addCurve(to: CGPoint(x: 1.00153*width, y: 0.72422*height), control1: CGPoint(x: 0.99477*width, y: 0.80888*height), control2: CGPoint(x: 1.00804*width, y: 0.76627*height))
            path.addLine(to: CGPoint(x: 0.99288*width, y: 0.72943*height))
            path.addCurve(to: CGPoint(x: 0.9713*width, y: 0.80281*height), control1: CGPoint(x: 0.99777*width, y: 0.76106*height), control2: CGPoint(x: 0.98788*width, y: 0.79404*height))
            path.addLine(to: CGPoint(x: 0.97364*width, y: 0.82005*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.57633*width, y: 0.93912*height))
            path.addCurve(to: CGPoint(x: 0.63512*width, y: 0.99904*height), control1: CGPoint(x: 0.58812*width, y: 0.97773*height), control2: CGPoint(x: 0.61097*width, y: 1.0118*height))
            path.addLine(to: CGPoint(x: 0.63277*width, y: 0.98179*height))
            path.addCurve(to: CGPoint(x: 0.58409*width, y: 0.9299*height), control1: CGPoint(x: 0.61441*width, y: 0.9915*height), control2: CGPoint(x: 0.59501*width, y: 0.96569*height))
            path.addLine(to: CGPoint(x: 0.57633*width, y: 0.93912*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: -0.00288*width, y: 0.72519*height))
            path.addCurve(to: CGPoint(x: 0.02502*width, y: 0.82095*height), control1: CGPoint(x: -0.00936*width, y: 0.76722*height), control2: CGPoint(x: 0.00391*width, y: 0.80979*height))
            path.addLine(to: CGPoint(x: 0.02737*width, y: 0.8037*height))
            path.addCurve(to: CGPoint(x: 0.00578*width, y: 0.73038*height), control1: CGPoint(x: 0.0108*width, y: 0.79494*height), control2: CGPoint(x: 0.00091*width, y: 0.762*height))
            path.addLine(to: CGPoint(x: -0.00288*width, y: 0.72519*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.40626*width, y: 0.92797*height))
            path.addCurve(to: CGPoint(x: 0.35798*width, y: 0.97851*height), control1: CGPoint(x: 0.39529*width, y: 0.96304*height), control2: CGPoint(x: 0.37612*width, y: 0.9881*height))
            path.addLine(to: CGPoint(x: 0.35564*width, y: 0.99576*height))
            path.addCurve(to: CGPoint(x: 0.41396*width, y: 0.93736*height), control1: CGPoint(x: 0.37949*width, y: 1.00837*height), control2: CGPoint(x: 0.4021*width, y: 0.97526*height))
            path.addLine(to: CGPoint(x: 0.40626*width, y: 0.92797*height))
            path.closeSubpath()
            return path
        }
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
