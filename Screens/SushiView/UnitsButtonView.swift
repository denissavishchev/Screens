import SwiftUI

struct UnitsButtonView: View {
    
    var isPressed: Bool
    var unit: String
    
    var body: some View {
        Capsule()
            .frame(width: 100, height: 50)
            .foregroundColor(isPressed ? .green : .white)
            .overlay(
                ZStack{
                    Capsule()
                        .stroke(isPressed ? .black.opacity(0.3) : .black, style: StrokeStyle(lineWidth: 1))
                        .frame(width: 100, height: 50)
                        .foregroundColor(.green)
                    Text("\(unit) units")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(isPressed ? .white.opacity(0.9) : .black)
                }
            )
    }
}
