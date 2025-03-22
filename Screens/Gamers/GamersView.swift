import SwiftUI

struct GamersView: View {
    var body: some View {
        VStack {
            PrinceView()
            Spacer()
                .frame(maxHeight: 50)
            RobotView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    GamersView()
}

struct RobotView: View {
    
    private let avatars: [String] = ["Avatar1", "Avatar2", "Avatar3", "B1", "B2", "B3", "B4", "A1", "A2", "A3"]
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0){
                Text("Copper robot")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(.icyWhite)
                Text("The Copper Robot is a sleek, futuristic automaton with a metallic bronze finish, designed for both utility and style")
                    .font(.system(size: 12, weight: .bold, design: .rounded))
                    .foregroundColor(.icyWhite.opacity(0.6))
                    .shadow(color: .icyWhite, radius: 5)
                    .padding(.trailing, 150)
                    .padding(.bottom, 12)
                ZStack {
                    Capsule()
                        .frame(width: 220, height: 40)
                        .foregroundColor(.black)
                    Capsule()
                        .stroke(lineWidth: 1)
                        .frame(width: 218, height: 40)
                        .foregroundColor(.white.opacity(0.2))
                    HStack{
                        Capsule()
                            .frame(width: 60, height: 34)
                            .foregroundColor(.princeGray)
                            .overlay{
                                HStack(spacing: 4){
                                    Text("321")
                                        .font(.system(size: 14, weight: .bold, design: .rounded))
                                        .foregroundColor(.icyWhite)
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 13)
                                        .foregroundColor(.goodYellow)
                                }
                                .padding(.horizontal, 2)
                            }
                        Spacer()
                        HStack(spacing: -12) {
                            let shuffledAvatars = avatars.shuffled()
                            ForEach(shuffledAvatars.prefix(4), id: \.self) { avatar in
                                ZStack {
                                    Image(avatar)
                                        .resizable()
                                        .frame(width: 34, height: 34)
                                        .clipShape(Circle())
                                    Circle()
                                        .stroke(.black, lineWidth: 1)
                                        .frame(width: 34, height: 34)
                                }
                            }
                            
                            if shuffledAvatars.count > 4 {
                                ZStack {
                                    Text("+\(shuffledAvatars.count - 4)")
                                        .font(.system(size: 14, weight: .bold))
                                        .foregroundColor(.white)
                                        .frame(width: 34, height: 34)
                                        .background(Color.gray)
                                        .clipShape(Circle())
                                    Circle()
                                        .stroke(.black, lineWidth: 1)
                                        .frame(width: 34, height: 34)
                                }
                            }
                        }
                    }
                    .padding(.leading, 4)
                    .padding(.trailing, 4)
                    .frame(width: 220, height: 40)
                }
                .padding(.bottom, 12)
                Text("Abillity")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.icyWhite.opacity(0.8))
                    .padding(.bottom, 4)
                GamerStatisticsView()
            }
            .frame(maxWidth: .infinity, maxHeight: 320, alignment: .leading)
            .background(LinearGradient(colors: [.retroBlack, .bikeGray], startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.leading, 18)
            RoundedRectangle(cornerRadius: 12)
                .stroke(LinearGradient(colors: [.icyWhite.opacity(0.5), .icyWhite.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 1)
                .frame(maxWidth: UIScreen.main.bounds.width - 14, maxHeight: 320)
            HStack {
                Spacer()
                Image("Robot")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 380)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 350)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.leading, 12)
    }
}

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
                        Capsule()
                            .frame(width: 200, height: 10)
                    }
                    
                }
            }
        }
        .frame(width: 220, height: 120)
        .background(.white.opacity(0.1))
    }
}

struct StatisticModel: Identifiable {
    var id = UUID()
    let title: String
    let icon: String
    let percent: Double
    let color: Color
}
