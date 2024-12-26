import SwiftUI

struct AmpView: View {
    
    var body: some View {
        VStack {
            Image("Amp")
                .resizable()
                .scaledToFit()
                .frame(width: .infinity)
                .shadow(color: .gray.opacity(0.6), radius: 8, x: 4, y: 8)
                .padding(.horizontal, 24)
                .padding(.top, 80)
                .padding(.bottom, 10)
            Text("Sound")
                .font(.system(size: 20))
                .bold()
                .foregroundColor(.gray)
            Text("Set your sound")
                .font(.system(size: 14))
                .bold()
                .foregroundColor(.gray.opacity(0.5))
            SoundButtonsView()
            SettingsBottomView()
        }
        .background(LinearGradient(gradient: Gradient(colors: [.ampWhite, .ampGray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .ignoresSafeArea()
    }
}

#Preview {
    AmpView()
}



