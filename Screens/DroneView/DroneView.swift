import SwiftUI

struct DroneView: View {
    var body: some View {
        VStack{
            TopDronView()
                .padding(.bottom, 12)
            
            ZStack{
                MinsFlyingLeft()
                
                CurveWave()
                
                CurveContainer()
                    .foregroundColor(.ampWhite.opacity(0.05))
                
                BatteryView()
            }
            .frame(maxWidth: .infinity, maxHeight: 200)

            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(stops: [
            .init(color: .droneGreen, location: 0.0),
            .init(color: .droneDarkGreen, location: 0.3),
            .init(color: .droneDarkGreen, location: 0.6),
            .init(color: .droneYellow, location: 3.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    DroneView()
}


struct BatteryView: View {
    var body: some View {
        HStack{
            BatteryStatusView()
            
            BatteryChartView()
        }
    }
}

struct BatteryStatusView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Battery Status")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.ampWhite)
                .padding(.bottom, 12)
            HStack(alignment: .bottom){
                Text("37.9")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(.ampWhite)
                Text("\u{00B0}C")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
            }
            Text("11 min ago")
                .font(.system(size: 14, weight: .bold, design: .rounded))
                .foregroundColor(.ampWhite.opacity(0.7))
        }
        .padding(.top, 70)
    }
}

struct BatteryChartView: View {
    
    let randomNumbers = [3, 4, 5, 7, 2, 4, 6, 3, 10, 9, 7, 5, 7, 9]
    
    var body: some View {
        ZStack{
            HStack(alignment: .bottom){
                ForEach(randomNumbers, id: \.self){i in
                    VStack(spacing: 6){
                        ForEach(0..<i, id: \.self){j in
                                RoundedRectangle(cornerRadius: 1)
                                .frame(width: 6, height: 6)
                                .foregroundColor(j >= i - 2 ? .droneYellow.opacity(0.2) : .droneYellow)
                        }
                    }
                }
            }
        }
        .frame(width: 200, height: 150)
        .background(.ampWhite.opacity(0.1))
        .padding(.top, 20)
    }
}
