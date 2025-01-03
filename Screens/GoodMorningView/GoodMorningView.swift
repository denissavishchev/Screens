import SwiftUI

struct GoodMorningView: View {
    var body: some View {
        VStack(spacing: 4){
            ZStack(alignment: .topTrailing){
                BlueContainer()
                GreenContainer()
                    .background(.clear)
                    .foregroundColor(.goodGreen)
                    .frame(maxWidth: .infinity, maxHeight: 230)
                    .padding(.top, 68)
                    .overlay(
                        GreenContainerOverlay()
                    )
                GreenContainerImages()
                GreenYellowSwitch()
                    .offset(x: -1.5, y: 4)
            }
            YellowContainer()
            Spacer()
        }
        .padding(8)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    GoodMorningView()
}




