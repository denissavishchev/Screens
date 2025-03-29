import SwiftUI

struct OptionsView: View {
    
    private let images: [String] = ["brain", "lightbulb.fill", "hand.draw", "mountain.2"]
    
    var body: some View {
        ZStack(alignment: .topLeading){
            OptionLine()
                .stroke(.red, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            Circle()
                .frame(width: 100, height: 100)
                .offset(x: 10, y: 10)
                
        }
        .frame(width: UIScreen.main.bounds.width - 36, height: 480)
        .background(.black.opacity(0.1))
    }
}

#Preview {
    OptionsView()
}

