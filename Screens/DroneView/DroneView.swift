import SwiftUI

struct DroneView: View {
    var body: some View {
        VStack{
            Image("Drone")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
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
