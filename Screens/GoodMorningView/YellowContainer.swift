import SwiftUI

struct YellowContainer: View {
    
    @State var blueOnOffSwitch = true
    
    var body: some View {
        HStack{
            VStack{
                Text("Steampunk Bulb")
                    .font(.system(size: 14))
                    .foregroundStyle(.ampWhite)
                    .bold()
                Text("Welcome to Smart Home")
                    .font(.system(size: 8))
                    .foregroundStyle(.ampWhite.opacity(0.7))
                ZStack(alignment: .bottom){
                    Image("Bulb")
                        .resizable()
                        .scaledToFit()
                    .frame(width: 120)
                    .padding(.bottom, 10)
                    OnOffSwitch(isOn: $blueOnOffSwitch, color: .goodBlue, textColor: .ampWhite)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 12)
            .padding(.top, 12)
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 40,
                bottomLeading: 40,
                bottomTrailing: 40,
                topTrailing: 0
            ))
            .overlay(
                VStack{
                    Text("JBL Speaker")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .bold()
                    Text("Living Room")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                        .bold()
                    HStack{
                        Image(systemName: "chevron.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10)
                            .foregroundColor(.black)
                        Spacer()
                        ZStack {
                            Image("Nevermind")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 75, height: 75)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(.black, lineWidth: 1.5))
                            Circle()
                                .frame(maxWidth: 25)
                                .foregroundColor(.goodYellow)
                            Circle()
                                .stroke(.black, lineWidth: 1.5)
                                .frame(maxWidth: 25)
                            Image(systemName: "play.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 10)
                                .foregroundColor(.black)
                                .padding(.leading, 2.5)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 10)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 20)
                    Text("Smels like teen spirit")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                        .bold()
                    Text("by Nirvana")
                        .font(.system(size: 10))
                        .foregroundColor(.black)
                        .bold()
                }
            )
            .foregroundColor(.goodYellow)
        }
        .frame(maxWidth: .infinity, maxHeight: 180)
    }
}
