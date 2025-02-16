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

            HStack{
                LeftBottomView()
                
                RightBottomView()
            }
            .padding(.horizontal, 18)
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


struct RightBottomView: View {
    var body: some View {
        VStack{
            Text("82.3 GB")
        }
        .frame(width: UIScreen.main.bounds.width * 0.6, height: 150)
        .background(.ampWhite.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
