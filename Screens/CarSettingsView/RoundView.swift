import SwiftUI

struct RoundView: View {
    
    let icon: String
    let value: Double
    let color: Color
    let unit: String
    
    var body: some View {
        VStack{
            ZStack{
                Circle()
                    .stroke(lineWidth: 5)
                    .fill(
                        .gray.opacity(0.3)
                    )
                    .frame(width: 50)
                Circle()
                    .trim(from: 0, to: value)
                    .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .foregroundColor(color)
                    .rotationEffect(.degrees(-90))
                    .frame(width: 50)
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
            Text("\(Int(value * 100)) \(unit)")
                .foregroundColor(.white)
        }
    }
}
