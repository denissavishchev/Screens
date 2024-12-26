import SwiftUI


struct SettingsBottomView: View {
    
    @State private var bass: Bool = false
    @State private var clarity: Bool = true
    @State private var fuzz: Bool = false
    @State private var solo: Bool = true
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 70, height: 4)
                .foregroundColor(.gray.opacity(0.3))
                .padding(.bottom, 10)
            HStack(alignment: .bottom){
                Spacer()
                VStack{
                    SettingSwitch(name: "Bass", isOn: $bass)
                        .padding(.bottom, 16)
                    SettingSwitch(name: "Clarity", isOn: $clarity)
                }
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 4, height: 130)
                    .foregroundColor(.gray.opacity(0.3))
                Spacer()
                VStack{
                    SettingSwitch(name: "Fuzz", isOn: $fuzz)
                        .padding(.bottom, 16)
                    SettingSwitch(name: "Solo", isOn: $solo)
                }
                Spacer()
            }
            Spacer()
        }
        .padding(.top, 20)
        .frame(maxWidth: .infinity, maxHeight: 400)
        .background(LinearGradient(gradient: Gradient(colors: [.ampWhite.opacity(0.7), .ampDarkGray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.white.opacity(0.3), lineWidth: 5)
        )
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.3), radius: 20)
    }
}

