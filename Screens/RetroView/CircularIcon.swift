import SwiftUI

struct CircularIcon: View {
    
    let value: Double
    let icon: String
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(.retroGray, lineWidth: 5)
                .frame(width: 40, height: 40)
            Circle()
                .trim(from: 0, to: value)
                .stroke(.retroWhite, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .frame(width: 40, height: 40)
                .rotationEffect(.degrees(-90))
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(height: 20)
                .foregroundColor(.retroGray)
        }
        
    }
}
