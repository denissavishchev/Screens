import SwiftUI

struct WeatherApp: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            WeatherBackgroundView(isNight: $isNight)
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                    HStack(spacing: 20){
                        ForEach(weathers, id: \.self){weather in
                            VStack{
                                Text(weather.name)
                                    .font(.system(size: 24, weight: .medium, design: .default))
                                    .foregroundColor(.white)
                                Image(systemName: weather.image)
                                    .renderingMode(.original)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                Text("\(weather.temperature)°")
                                    .font(.system(size: 30, weight: .medium, design: .default))
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Spacer()
                    Button{
                        isNight.toggle()
                    }label: {
                        Text("Change")
                            .frame(width: 280, height: 50)
                            .background(.white)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    WeatherApp()
}

struct WeatherBackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}
