import SwiftUI

struct CarSettingsView: View {
    
    private let images = ["A1", "A2", "A3", "A4"]
    private let values = [250, 215, 455, 340]
    
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
            
            VStack {
                ForEach(Array(zip(images, values)), id: \.0){image, value in
                    CustomSlider(image: image, value: value)
                }
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






