
import SwiftUI

struct DottedButton: View {
    var body: some View {
        UnevenRoundedRectangle(cornerRadii: .init(
            topLeading: 50,
            bottomLeading: 24,
            bottomTrailing: 40,
            topTrailing: 24
        ))
        .stroke(.ampWhite.opacity(0.6), style: StrokeStyle(lineWidth: 2, dash: [5, 10]))
        .shadow(color: .black.opacity(0.6), radius: 10, x: 3, y: 5)
        .frame(width: 90, height: 90)
        .overlay{
            VStack {
                Image(systemName: "basketball.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.goodYellow)
                    .bold()
                    .offset(x: 5)
                Text("+6")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .foregroundColor(.ampWhite)
            }
        }
    }
}
