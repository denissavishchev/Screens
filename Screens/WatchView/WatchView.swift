import SwiftUI

struct WatchView: View {
    var body: some View {
        VStack{
            Image("Watch")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .shadow(color: .gray.opacity(0.6), radius: 8, x: 4, y: 8)
                .shadow(color: .white.opacity(0.6), radius: 8, x: -4, y: -4)
                .padding(.horizontal, 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [.ampWhite, .ampGray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .ignoresSafeArea()
    }
}

#Preview {
    WatchView()
}
