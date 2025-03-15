import SwiftUI

struct WeatherApp: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
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
                }
                
            }
        }
    }
}

#Preview {
    WeatherApp()
}
