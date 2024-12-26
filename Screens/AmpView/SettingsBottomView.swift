import SwiftUI


struct SettingsBottomView: View {
    var body: some View {
        VStack{
            Text("Amp")
        }
        .frame(maxWidth: .infinity, maxHeight: 400)
        .background(LinearGradient(gradient: Gradient(colors: [.ampWhite.opacity(0.7), .ampDarkGray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.white.opacity(0.3), lineWidth: 5)
        )
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.3), radius: 20)
    }
}
