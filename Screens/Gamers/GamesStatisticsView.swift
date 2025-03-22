
import SwiftUI

struct GamerStatisticsView: View {
    
    let statistics: [StatisticModel] = [
        .init(title: "Move", icon: "star.fill.left", percent: 39, color: .goodYellow),
        .init(title: "Attack", icon: "bolt.fill", percent: 68, color: .goodRed),
        .init(title: "Enhance", icon: "drop.degreesign.fill", percent: 81, color: .goodGreen),
    ]
    
    var body: some View {
        VStack(spacing: 8){
            ForEach(statistics, id: \.id){statistic in
                VStack(spacing: 2){
                    HStack{
                        Text(statistic.title)
                            .font(.system(size: 12, weight: .bold, design: .rounded))
                            .foregroundColor(.icyWhite.opacity(0.8))
                        Spacer()
                        Text("\(statistic.percent, specifier: "%.0f")%")
                            .font(.system(size: 12, weight: .bold, design: .rounded))
                            .foregroundColor(.icyWhite.opacity(0.8))
                    }
                    .padding(.leading, 25)
                    HStack {
                        Image(systemName: statistic.icon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .foregroundColor(statistic.color)
                        ZStack(alignment: .leading){
                            Capsule()
                                .frame(width: 200, height: 10)
                                .foregroundColor(statistic.color.opacity(0.1))
                            Capsule()
                                .frame(width: 200 * statistic.percent / 100, height: 10)
                                .foregroundColor(statistic.color)
                        }
                    }
                    
                }
            }
        }
        .frame(width: 220, height: 120)
    }
}

struct StatisticModel: Identifiable {
    var id = UUID()
    let title: String
    let icon: String
    let percent: Double
    let color: Color
}
