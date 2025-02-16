import SwiftUI

struct LeftBottomView: View {
    var body: some View {
        VStack(alignment: .leading){
            Image(systemName: "folder.fill.badge.gear")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding(8)
                .foregroundColor(.retroWhite.opacity(0.7))
                .background(.retroWhite.opacity(0.1), in: .rect(cornerRadius: 12))
                .padding(.bottom, 12)
            Text("82.3 GB")
                .font(.system(size: 18, weight: .bold, design: .rounded))
                .foregroundColor(.ampWhite)
            Text("Remaining")
                .font(.system(size: 12, weight: .semibold, design: .rounded))
                .foregroundColor(.ampWhite.opacity(0.7))
            HStack{
                Text("1 TB")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampGreen.opacity(0.7))
                Text("Full memory")
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
            }
            .padding(.top, 12)
        }
        .padding(.horizontal, 8)
        .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
        .background(.ampWhite.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

struct RightBottomView: View {
    
    var modes: [String] = ["P", "A", "F"]
    @State var selectedMode: String = "P"
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image(systemName: "folder.fill.badge.gear")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(8)
                    .foregroundColor(.retroWhite.opacity(0.7))
                    .background(.retroWhite.opacity(0.1), in: .rect(cornerRadius: 12))
                    .padding(.bottom, 12)
                Text("270 Ml")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.ampWhite)
                Text("Altitude limited")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
                HStack(spacing: -4){
                    ForEach(1...8, id: \.self){i in
                            Circle()
                            .stroke(i < 6 ? .droneYellow : .droneYellow.opacity(0.1), lineWidth: 2)
                            .frame(width: 20, height: 20)
                    }
                }
            }
            VStack{
                Text("Flight mode")
                    .font(.system(size: 12, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
                VStack(spacing: 6){
                    ForEach(modes, id: \.self){mode in
                            Circle()
                            .frame(width: 24, height: 24)
                            .foregroundColor(selectedMode == mode ? .droneYellow : .ampWhite.opacity(0.2))
                            .overlay{
                                Text(mode)
                                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                                    .foregroundColor(selectedMode == mode ? .black : .ampWhite.opacity(0.7))
                            }
                            .onTapGesture{
                                withAnimation{
                                    selectedMode = mode
                                }
                        }
                    }
                }
                .padding(8)
                .background(.retroWhite.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
        .frame(width: UIScreen.main.bounds.width * 0.6, height: 150)
        .background(.ampWhite.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

