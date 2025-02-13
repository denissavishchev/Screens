import SwiftUI

struct BottomContainerThree: View {
    
    let colors: [Color] = [.retroGray, .retroRed]
    
    var body: some View {
        HStack(spacing: 3){
            ForEach(colors, id: \.self){color in
                ZStack{
                    Circle()
                        .stroke(.retroGray, lineWidth: 4)
                        .frame(width: 120, height: 120)
                    Circle()
                        .stroke(.retroGray.opacity(0.2), lineWidth: 0.5)
                        .frame(width: 70, height: 70)
                    Circle()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.white)
                        .shadow(color: .retroBlack.opacity(0.6), radius: 15, x: 10, y: 10)
                    Circle()
                        .stroke(.retroBlack.opacity(0.5), lineWidth: 1)
                        .frame(width: 55, height: 55)
                    Circle()
                        .frame(width: 55, height: 55)
                        .foregroundStyle(LinearGradient(colors: [color, color, color.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .shadow(color: .retroBlack.opacity(0.6), radius: 10, x: 12, y: 12)
                    Circle()
                        .fill(
                            .shadow(.inner(color: .retroBlack.opacity(0.4), radius: 2, x: 2, y: 2))
                        )
                        .frame(width: 12, height: 12)
                        .foregroundColor(.retroWhite)
                        .offset(x: color == .retroGray ? 10 : -10, y: color == .retroGray ? 10 : -10)
                }
                .frame(maxWidth: UIScreen.main.bounds.width * 0.5)
                .frame(height: UIScreen.main.bounds.width * 0.45)
                .background(.retroWhite)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            }
        }
        .padding(.horizontal, 4)
    }
}
