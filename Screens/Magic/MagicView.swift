import SwiftUI

struct MagicView: View {
    var body: some View {
        ZStack{
           Image("Chandra")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                ManaView()
                Spacer()
                ZStack(alignment: .top){
                    Description()
                        .padding(.top, 20)
                    DescriptionShape()
                        .foregroundStyle(LinearGradient(colors: [.magicWhite, .magicRed, .magicRed], startPoint: .leading, endPoint: .trailing))
                        .shadow(color: .black, radius: 5)
                        .shadow(color: .black.opacity(0.5), radius: 5)
                    LegendaryView()
                    CountShape()
                        .frame(width: 50, height: 30)
                    
                        .background()
                        .offset(x: -150, y: 70)
                }
                .frame(width: UIScreen.main.bounds.width - 36, height: 250)
                .padding(.bottom, 50)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MagicView()
}

struct CountShape: Shape{
    func path(in rect: CGRect) -> Path{
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - 15, y: rect.minY))
        path.addArc(center: CGPoint(x: rect.maxX - 15, y: rect.minY + 15),
                    radius: 15,
                    startAngle: Angle(degrees: -90),
                    endAngle: Angle(degrees: 0),
                    clockwise: false)
        path.addQuadCurve(
                    to: CGPoint(x: rect.minX + 80, y: rect.maxY - 20),
                    control: CGPoint(x: rect.minX + 45, y: rect.maxY - 20))
        
        return path
    }
}

struct Description: View {
    var body: some View {
        ZStack{
            VStack{
                Color(.magicSilver)
                    .opacity(0.6)
                Color(.magicSilver)
                    .opacity(0.2)
                    .frame(height: 60)
                Color(.magicSilver)
                    .opacity(0.6)
            }
            .padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width - 70, height: 210)
    }
}


