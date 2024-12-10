import SwiftUI

struct CarSettingsView: View {
    
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                RoundView(icon: "speaker.2.fill", value: 0.7, color: .green, unit: "%")
                Spacer()
                RoundView(icon: "fanblades.fill", value: 0.2, color: .blue, unit: "%")
                Spacer()
                RoundView(icon: "figure.seated.side.windshield.front.and.heat.waves", value: 0.5, color: .purple, unit: "C")
                Spacer()
                RoundView(icon: "lightbulb.fill", value: 0.8, color: .yellow, unit: "%")
                Spacer()
            }
            .frame(maxWidth: .infinity)
            CarView()
            HStack{
                Image(systemName: "battery.0")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 100, height: 50)
            }
            .padding(.bottom, 20)
            CustomSlider()
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    CarSettingsView()
}

struct CustomSlider: View {
    
    @State var offset: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                Capsule()
                    .fill(.white.opacity(0.5))
                    .frame(height: 30)
                Capsule()
                    .fill(.orange.opacity(0.5))
                    .frame(width: offset + 20, height: 30)
                Circle()
                    .fill(.yellow)
                    .frame(width: 35, height: 35)
                    .background(Circle().stroke(.white, lineWidth: 5))
                    .offset(x: offset)
                    .gesture(DragGesture()
                        .onChanged({ (value) in
                            if value.location.x > 20 && value.location.x <= UIScreen.main.bounds.width - 50{
                                offset = value.location.x - 20
                            }
                        }))
        }
        .padding()
    }
}




