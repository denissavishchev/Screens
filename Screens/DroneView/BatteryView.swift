import SwiftUI

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
            HStack(alignment: .bottom, spacing: 6){
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
            .padding(.leading, 22)
            .padding(.bottom, 22)
            HStack(alignment: .bottom, spacing: 0){
                VStack(spacing: 15){
                    Text("H")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.ampWhite.opacity(0.7))
                    Text("M")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.ampWhite.opacity(0.7))
                    Text("L")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(.ampWhite.opacity(0.7))
                }
                .padding(.leading, 3)
                .padding(.bottom, 22)
                Spacer()
                Rectangle()
                    .frame(width: 1, height: 60)
                    .foregroundColor(.ampWhite.opacity(0.2))
                    .padding(.bottom, 22)
                VStack{
                    Spacer()
                    Rectangle()
                        .frame(width: 175, height: 1)
                        .foregroundColor(.ampWhite.opacity(0.1))
                        .padding(.bottom, 30)
                    Rectangle()
                        .frame(width: 175, height: 1)
                        .foregroundColor(.ampWhite.opacity(0.2))
                    HStack{
                        Text("9:20")
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .foregroundColor(.ampWhite.opacity(0.7))
                        Spacer()
                        Text("9:30")
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .foregroundColor(.ampWhite.opacity(0.7))
                        Spacer()
                        Text("9:40")
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .foregroundColor(.ampWhite.opacity(0.7))
                    }
                    .frame(width: 170)
                }
                
                Rectangle()
                    .frame(width: 1, height: 120)
                    .foregroundColor(.ampWhite.opacity(0.2))
                    .padding(.bottom, 22)
            }
            
        }
        .frame(width: 200, height: 150)
        .padding(.top, 20)
    }
}
