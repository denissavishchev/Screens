import SwiftUI

struct OnOffSwitch: View {
    
    @Binding var isOn: Bool
    var color: Color
    var textColor: Color
    
    var body: some View {
        ZStack(alignment: .bottom){
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 64, height: 46)
                .foregroundColor(.black)
            HStack{
                isOn ? Spacer() : nil
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: isOn ? 3 : 40,
                    bottomLeading: isOn ? 3 : 40,
                    bottomTrailing: isOn ? 40 : 3,
                    topTrailing: isOn ? 40 : 3),
                                       style: .continuous)
                .frame(maxWidth: 30, maxHeight: 42)
                .overlay(
                    Text(isOn ? "On" : "Off")
                        .font(.system(size: 12))
                        .foregroundColor(textColor)
                        .bold()
                )
                .foregroundColor(color)
                .padding(.bottom, 2)
                isOn ? nil : Spacer()
            }
            .frame(width: 60)
        }
        .onTapGesture {
            withAnimation{
                isOn.toggle()
            }
        }
    }
}
