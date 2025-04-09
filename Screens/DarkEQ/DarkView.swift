import SwiftUI

struct DarkView: View {
    
    @State private var low: CGFloat = -30
    
    var body: some View {
        VStack{
            DarkSlider(yValue: $low)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.eqGray, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    DarkView()
}

struct DarkSlider: View {
    
    private let height: CGFloat = 280
    private let width: CGFloat = 16
    @Binding var yValue: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Capsule()
                .fill(LinearGradient(colors: [.ampWhite, .ampDarkWhite], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: width, height: height)
                .shadow(color: .gray.opacity(0.5), radius: 5, x: 5)
                .shadow(color: .white.opacity(0.5), radius: 5, x: -5)
            
            Capsule()
                .fill(LinearGradient(colors: [.ampNavy, .ampBlue], startPoint: .top, endPoint: .bottom))
                .frame(width: width, height: -yValue + width)
            
            Circle()
                .fill(LinearGradient(colors: [.ampDark, .ampWhite], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: width * 1.6)
                .shadow(color: .ampWhite, radius: 2, x: 1, y: -1)
                .shadow(color: .gray, radius: 2, x: -1, y: 1)
                .overlay(
                    ZStack {
                        Circle()
                            .stroke(LinearGradient(colors: [.clear, .gray], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 1)
                        Circle()
                            .stroke(LinearGradient(colors: [.ampWhite, .clear], startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 1)
                        Circle()
                            .fill(.ampGreen.opacity(-yValue / 100))
                            .frame(width: 12, height: 12)
                            .shadow(color: .white, radius: 3)
                    }
                )
                .offset(y: yValue)
                .gesture(
                    DragGesture().onChanged { value in
                        let minY: CGFloat = 0
                        let maxY: CGFloat = height - (width * 1.6)
                        yValue = -(min(max(minY, -value.location.y), maxY))
                    }
                )
        }
    }
}
