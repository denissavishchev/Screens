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
    var body: some View {
        ZStack{
            VStack{
                
            }
            .frame(maxWidth: .infinity, maxHeight: 320)
            .background(LinearGradient(colors: [.retroBlack, .bikeGray], startPoint: .topLeading, endPoint: .bottomTrailing))
            .clipShape(RoundedRectangle(cornerRadius: 12))
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
