import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Image("Dots")
                .resizable()
                .scaledToFit()
                .offset(x: 50, y: -220)
                .opacity(0.2)
            Image("Dots")
                .resizable()
                .scaledToFit()
                .offset(x: -250, y: 250)
                .opacity(0.3)
            VStack {
                Image("Jelly")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                Spacer()
            }
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.ampNavy.opacity(0.1), .watchBlue]),
                                                startPoint: .top, endPoint: .bottom))
                .ignoresSafeArea()
        }
    }
}
