import SwiftUI

struct RetroView: View {
    var body: some View {
        ZStack{
            VStack{
                TopContainer()
                
                BottomContainer()
            }
            .background(.retroGray)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .clipShape(RoundedRectangle(cornerRadius: 50))
            .padding(.horizontal, 3)
            .padding(.vertical, 3)
            .ignoresSafeArea()
        }
        .background(.retroBlack)
    }
}

#Preview {
    RetroView()
}



struct BottomContainer: View {
    var body: some View {
        VStack{
            VStack{
                Text("Bottom")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.retroBlack)
        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
            topLeading: 8,
            bottomLeading: 50,
            bottomTrailing: 50,
            topTrailing: 8
        )))
        .padding(.horizontal, 3)
        .padding(.top, 0)
        .padding(.bottom, 12)
    }
}


