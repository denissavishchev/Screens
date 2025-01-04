import SwiftUI

struct CCTVView: View {
    
    @State var cctvSwitch: Bool = false
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 30)
                .stroke(.steamDarkGray.opacity(0.5), lineWidth: 2)
                .overlay(
                    HStack{
                        VStack{
                            Text("CCTV")
                                .font(.system(size: 20))
                                .foregroundStyle(.ampWhite)
                                .bold()
                            Text("Main Gate")
                                .font(.system(size: 10))
                                .foregroundStyle(.ampWhite.opacity(0.7))
                        }
                        .padding(.leading, 12)
                        Spacer()
                        OnOffSwitch(isOn: $cctvSwitch, color: .goodYellow, textColor: .black)
                            .padding(.trailing, 6)
                    }
                )
                .frame(maxWidth: .infinity, maxHeight: 55)
            RoundedRectangle(cornerRadius: 30)
                .overlay(
                    VStack{
                        Text("TPLink")
                            .font(.system(size: 20))
                            .foregroundStyle(.black)
                            .bold()
                            .padding(.top, 12)
                        Text("Connected")
                            .font(.system(size: 10))
                            .foregroundStyle(.black.opacity(0.7))
                            .padding(.bottom, 12)
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.black)
                            .overlay(
                                VStack{
                                    HStack{
                                        Image(systemName: "dot.radiowaves.up.forward")
                                            .foregroundColor(.ampWhite)
                                        Text("98.65")
                                            .foregroundStyle(.ampWhite)
                                            .bold()
                                    }
                                    Text("Downloading")
                                        .font(.system(size: 10))
                                        .foregroundStyle(.ampWhite)
                                        .bold()
                                }
                            )
                            .padding(.horizontal, 3)
                            .padding(.bottom, 3)
                    }
                )
                .foregroundColor(.goodPurple)
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
    }
}

