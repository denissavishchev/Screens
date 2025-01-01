import SwiftUI

struct GoodMorningView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .topTrailing){
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 50.0,
                    bottomLeading: 40.0,
                    bottomTrailing: 100.0,
                    topTrailing: 40.0),
                    style: .continuous)
                .frame(maxWidth: .infinity, maxHeight: 150)
                .foregroundColor(.goodBlue)
                GreenContainer()
                    .background(.clear)
                    .foregroundColor(.goodGreen)
                    .frame(maxWidth: .infinity, maxHeight: 230)
                    .padding(.top, 68)
                VStack(spacing: 2.5){
                    Image("Cat")
                        .resizable()
                        .scaledToFit()
                        .background(.goodGray)
                        .clipShape(Circle())
                        .frame(width: 80)
                        .overlay(
                            Circle()
                                .stroke(.black, lineWidth: 2)
                    )
                        .padding(.top, 68)
                    Circle()
                        .background(.black)
                        .clipShape(Circle())
                        .frame(width: 80)
                        .overlay(
                            ZStack{
                                Circle()
                                    .stroke(.goodGreen, lineWidth: 3)
                                Image(systemName: "power")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.goodGreen)
                            }
                    )
                }
                ZStack(alignment: .bottomTrailing){
                    Rectangle()
                        .frame(width: 38, height: 22)
                        .foregroundColor(.goodYellow)
                        .padding(.top, 275)
                    Rectangle()
                        .stroke(.goodYellow, lineWidth: 3)
                        .frame(width: 38, height: 22)
                        .foregroundColor(.goodYellow)
                        .padding(.top, 275)
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 78, height: 55)
                        .foregroundColor(.black)
                        .padding(.top, 240)
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.goodYellow, lineWidth: 3)
                        .frame(width: 78, height: 55)
                        .foregroundColor(.black)
                        .padding(.top, 240)
                }
            }
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
