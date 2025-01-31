import SwiftUI

struct PaintView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .frame(maxWidth: 250, maxHeight: 250)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.ampGreen, .watchBlue]), startPoint: .topTrailing, endPoint: .bottomLeading))
            Image("Abstract")
                .resizable()
                .frame(width: 220, height: 220)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            ZStack {
                UnevenRoundedRectangle(cornerRadii: .init(
                        topLeading: 100,
                        bottomLeading: 10,
                        bottomTrailing: 10,
                        topTrailing: 100
                    ))
                .stroke(.ampWhite.opacity(0.6), lineWidth: 3)
                    .frame(width: 100, height: 100)
                UnevenRoundedRectangle(cornerRadii: .init(
                        topLeading: 100,
                        bottomLeading: 10,
                        bottomTrailing: 10,
                        topTrailing: 100
                    ))
                .foregroundColor(.ampNavy.opacity(0.2))
                    .shadow(color: .gray.opacity(0.6), radius: 10, x: 3, y: 5)
                    .frame(width: 100, height: 100)
                Image(systemName: "play")
                    .resizable()
                    .frame(width: 40, height: 45)
                    .offset(x: 5, y: 5)
                    .foregroundColor(.ampWhite.opacity(0.6))
            }
            .padding(.top, 165)
        }
    }
}
