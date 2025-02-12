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
        VStack(spacing: 3){
            BottomContainerOne()
            
            BottomContainerTwo()
            
            BottomContainerThree()
            
            BottomContainerFour()
            
            Spacer()
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


struct BottomContainerThree: View {
    var body: some View {
        HStack(spacing: 3){
            ZStack{
                
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.5)
            .frame(height: UIScreen.main.bounds.width * 0.45)
            .background(.retroWhite)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
            ZStack{
                
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.5)
            .frame(height: UIScreen.main.bounds.width * 0.45)
            .background(.retroWhite)
            .clipShape(RoundedRectangle(cornerRadius: 5))
        }
        .padding(.horizontal, 4)
    }
}

struct BottomContainerFour: View {
    var body: some View {
        HStack(spacing: 3){
            ZStack{
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .background(.retroWhite)
            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 5, bottomLeading: 32, bottomTrailing: 5, topTrailing: 5)))
            
            ZStack{
                
            }
            .frame(width: 90, height: 90)
            .background(.retroWhite)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
            ZStack{
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 90)
            .background(.retroWhite)
            .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 5, bottomLeading: 5, bottomTrailing: 32, topTrailing: 5)))
        }
        .padding(.horizontal, 4)
    }
}
