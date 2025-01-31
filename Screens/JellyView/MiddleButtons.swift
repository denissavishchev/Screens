import SwiftUI

struct MiddleButtons: View {
    
    var color: Color
    var image: String
    var side: Bool
    
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 150,
                bottomLeading: 24,
                bottomTrailing: 24,
                topTrailing: 24
            ))
            .foregroundColor(color.opacity(0.4))
            .frame(width: 90, height: 90)
            .shadow(color: .gray.opacity(0.7), radius: 10)
            
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 150,
                bottomLeading: 24,
                bottomTrailing: 24,
                topTrailing: 24
            ))
            .stroke(color, lineWidth: 4)
            .shadow(color: .black.opacity(0.6), radius: 10, x: 3, y: 5)
            .frame(width: 90, height: 90)
            .overlay{
                Image(systemName: image)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(color)
                    .bold()
                    .offset(x: side ? 5 : -5)
                    .rotationEffect(.degrees(side ? 0 : 180))
            }
        }
        .rotationEffect(.degrees(side ? 0 : 180))
    }
}

