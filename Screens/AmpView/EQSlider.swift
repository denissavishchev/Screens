import SwiftUI

struct EQSlider: View {
    
    private let height: CGFloat = 180
    private let width: CGFloat = 20
    @Binding var yValue: CGFloat
    var name: String
    
    var body: some View {
        VStack{
            Text(name)
                .font(.system(size: 12))
                .foregroundColor(.gray)
            ZStack(alignment: .bottom){
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [.ampWhite, .ampDarkWhite]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .shadow(.inner(color: .gray.opacity(0.8), radius: 5, x:  3, y: 3))
                    )
                    .frame(width: width, height: height)
                    .shadow(color: .gray.opacity(0.5), radius: 5, x: 5)
                    .shadow(color: .white.opacity(0.5), radius: 5, x: -5)
                Capsule()
                    .fill(LinearGradient(gradient: Gradient(colors: [.ampNavy, .ampBlue]), startPoint: .top, endPoint: .bottom))
                    .frame(width: width, height: -yValue + width)
                ZStack{
                    Circle()
                        .frame(width: width * 1.6, height: width * 1.6)
                        .offset(y: yValue)
                        .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.ampDark, .ampWhite]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .shadow(color: .ampWhite, radius: 2, x: 1, y: -1)
                        .shadow(color: .gray, radius: 2, x: -1, y: 1)
                    Circle()
                        .stroke(LinearGradient(gradient: Gradient(colors: [.clear, .gray]), startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 1)
                        .frame(width: width * 1.6, height: width * 1.6)
                        .offset(y: yValue)
                    Circle()
                        .stroke(LinearGradient(gradient: Gradient(colors: [.ampWhite, .clear]), startPoint: .topTrailing, endPoint: .bottomLeading), lineWidth: 1)
                        .frame(width: width * 1.6, height: width * 1.6)
                        .offset(y: yValue)
                    Circle()
                        .foregroundStyle(.ampGreen.opacity(-yValue / 100))
                        .offset(y: yValue)
                        .shadow(color: .white, radius: 3)
                        .frame(width: 12, height: 12)
                }
                    .gesture(DragGesture().onChanged{ value in
                        let minY: CGFloat = 0
                        let maxY: CGFloat = height - (width * 1.6)
                        yValue = -(min(max(minY, -value.location.y), maxY))
                    })
            }
        }
        .padding(.top, 5)
        .padding(.bottom, 40)
    }
}
