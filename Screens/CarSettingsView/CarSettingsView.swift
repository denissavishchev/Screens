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
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    CarSettingsView()
}




