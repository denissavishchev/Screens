import SwiftUI

struct BikeUnitView: View {
    var body: some View {
        ZStack(alignment: .top){
            Text("D5")
                .font(.system(size: 250, weight: .bold, design: .default))
                .foregroundColor(.bikeLightGray)
                .frame(height: 160)
            
            Rectangle()
                .frame(width: .infinity, height: 200)
                .foregroundStyle(LinearGradient(gradient: Gradient(stops: [
                    .init(color: .clear, location: 0.0),
                    .init(color: .bikeGray.opacity(0.5), location: 0.3),
                    .init(color: .bikeGray, location: 0.6),
                    .init(color: .bikeGray, location: 1.0) ]),
                                                startPoint: .top, endPoint: .bottom))
            
            Image("Bike")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 12)
            
            Text("SIMPLY. BETTER.")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.steamWhite.opacity(0.6))
                .rotationEffect(.degrees(90))
                .frame(width: 200, height: 16)
                .offset(x: 175, y: 65)
        }
    }
}

