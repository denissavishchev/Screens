import SwiftUI

struct LampView: View {
    
    @State private var lightSlider: CGFloat = 218
    @State private var lightColor: Color = .yellow
    private let colors: [Color] = [.yellow, .red, .purple, .blue, .green, .orange]
    
    var body: some View {
        VStack{
            ZStack {
                LightShine()
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(LinearGradient(
                        gradient: Gradient(colors: [lightColor.opacity(
                            mapValue(input: lightSlider, inputMin: 150, inputMax: 300, outputMin: 0.1, outputMax: 1)), .clear]),
                                                    startPoint: .top, endPoint: .bottom))
                HStack {
                    Image("Lamp")
                        .resizable()
                        .scaledToFit()
                    .frame(height: 600)
                    Spacer()
                    VStack{
                        ForEach(colors, id: \.self){color in
                            Circle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(color)
                                .overlay(
                                    Circle()
                                        .stroke(lightColor == color ? .ampWhite : .clear, lineWidth: 4)
                                )
                                .onTapGesture {
                                    lightColor = color
                                }
                        }
                    }
                    .frame(width: 80, height: 300)
                    .padding(.bottom, 280)
                    LightSlider(yValue: $lightSlider, color: lightColor)
                    
                }
                .padding(.horizontal, 24)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.ampWhite, .gray.opacity(0.8)]), startPoint: .top, endPoint: .bottom))
    }
    func mapValue(input: Double, inputMin: Double, inputMax: Double, outputMin: Double, outputMax: Double) -> Double {
        return outputMin + (input - inputMin) * (outputMax - outputMin) / (inputMax - inputMin)
    }
}

#Preview {
    LampView()
}



