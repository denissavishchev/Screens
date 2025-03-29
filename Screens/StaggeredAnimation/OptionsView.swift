import SwiftUI

struct OptionsView: View {
    
    @State private var isBrain: Bool = false
    @State private var isBulb: Bool = false
    @State private var isClick: Bool = false
    @State private var isRock: Bool = false
    
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading){
                OptionLine()
                    .stroke(LinearGradient(colors: [.bikeBlue, .optionBlue], startPoint: .top, endPoint: .bottom), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
                OptionButton(icon: "line.3.crossed.swirl.circle.fill", offsetX: 10, offsetY: 10, isLeft: false, isOn: $isBrain)
                OptionButton(icon: "gear", offsetX: UIScreen.main.bounds.width - 160, offsetY: 130, isLeft: true, isOn: $isBulb)
                OptionButton(icon: "hand.draw", offsetX: 10, offsetY: 250, isLeft: false, isOn: $isClick)
                OptionButton(icon: "puzzlepiece.fill", offsetX: UIScreen.main.bounds.width - 160, offsetY: 370, isLeft: true, isOn: $isRock)
                    
            }
            .frame(width: UIScreen.main.bounds.width - 36, height: 480)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.icyGray)
    }
}

#Preview {
    OptionsView()
}



