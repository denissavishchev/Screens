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
            HStack{
                CCTVView()
                CleaningView()
            }
            .frame(maxWidth: .infinity, maxHeight: 200)
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

struct CleaningView: View {
    var body: some View {
        VStack{
            
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(.white.opacity(0.2))
    }
}
