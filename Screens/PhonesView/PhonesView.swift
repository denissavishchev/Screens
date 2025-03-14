import SwiftUI

struct PhonesView: View {
    
    @State private var selectedColor: Color = .ampWhite
    private let colors: [Color] = [.ampWhite, .black]
    private let sides: [String] = ["L", "R"]
    private let lBattery: Int = 8
    private let rBattery: Int = 7
    
    var body: some View {
        VStack{
            VStack {
                Text("WF-1000XM4")
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                
                HStack(spacing: 20){
                    ForEach(colors, id: \.self){color in
                        ZStack {
                            Circle()
                                .stroke(.black, lineWidth: selectedColor == color ? 1.5 : 0)
                                .frame(width: 30, height: 30)
                            Circle()
                                .foregroundColor(color)
                                .frame(width: 24, height: 24)
                        }
                        .onTapGesture {
                            withAnimation(.linear(duration: 0.1)){
                                selectedColor = color
                            }
                        }
                    }
                }
                
                HStack(spacing: 150){
                    ForEach(sides, id: \.self){side in
                        ZStack {
                            Circle()
                                .stroke(.black, lineWidth: 1.5)
                                .frame(width: 40, height: 40)
                        Text(side)
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                        }
                    }
                }
                .padding(.vertical, 20)
                    
                Image("AirPods")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .shadow(color: .black.opacity(0.4), radius: 10, x: 5, y: 10 )
                    .shadow(color: .black.opacity(0.5), radius: 8, x: -5, y: 10 )
                
                HStack(spacing: 135){
                    BatteryLevelView(level: lBattery)
                    BatteryLevelView(level: rBattery)
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: 550)
            .background(.blueGray)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .padding(.horizontal, 8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.bikeGray)
    }
}

#Preview {
    PhonesView()
}

struct BatteryLevelView: View {
    
    let level: Int

    
    var body: some View {
        VStack(spacing: 4){
            ForEach((1...10).reversed(), id: \.self){i in
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 8, height: 16)
                    .foregroundColor(i > level ? .ampWhite : .black)
            }
            Text("\(level * 10)%")
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(.ampWhite)
                .padding(.horizontal, 14)
                .padding(.vertical, 8)
                .background(
                    .black, in: Capsule()
                )
                .padding(.top, 10)
        }
    }
}
