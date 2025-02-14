import SwiftUI

struct DroneView: View {
    var body: some View {
        VStack{
            TopDronView()
                .padding(.bottom, 12)
            
            ZStack{
                MinsFlyingLeft()
                
                CurveWave()
                
                    
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
            .background(.retroWhite.opacity(0.1))
            
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





