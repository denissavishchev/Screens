import SwiftUI

struct GreenYellowSwitch: View {
    
    @State var isYellow: Bool = false
    
    var body: some View {
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
            HStack{
                isYellow ? Spacer() : nil
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: isYellow ? 5 : 40,
                    bottomLeading: isYellow ? 5 : 40,
                    bottomTrailing: isYellow ? 40 : 5,
                    topTrailing: isYellow ? 40 : 5),
                                       style: .continuous)
                .frame(maxWidth: 34, maxHeight: 46)
                .overlay(
                    Text(isYellow ? "On" : "Off")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .bold()
                )
                .foregroundColor(.goodYellow)
                .padding(.bottom, 4.5)
                .padding(.horizontal, 5)
                isYellow ? nil : Spacer()
            }
            .frame(width: 78)
        }
        .onTapGesture {
            withAnimation{
                isYellow.toggle()
            }
        }
    }
}
