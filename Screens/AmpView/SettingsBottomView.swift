import SwiftUI


struct SettingsBottomView: View {
    
    @State private var bass: Bool = false
    @State private var clarity: Bool = true
    @State private var fuzz: Bool = false
    @State private var solo: Bool = true
    @State private var hz50: CGFloat = -140
    @State private var hz100: CGFloat = -70
    @State private var hz500: CGFloat = -100
    @State private var hz1000: CGFloat = -30
    @State private var hz2000: CGFloat = -20
    @State private var hz5000: CGFloat = -120
    @State private var hz7000: CGFloat = -50
    
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
            HStack(spacing: 20){
                EQSlider(yValue: $hz50, name: "50")
                EQSlider(yValue: $hz100, name: "100")
                EQSlider(yValue: $hz500, name: "500")
                EQSlider(yValue: $hz1000, name: "1000")
                EQSlider(yValue: $hz2000, name: "2000")
                EQSlider(yValue: $hz5000, name: "5000")
                EQSlider(yValue: $hz7000, name: "7000")
            }
                
        }
        .padding(.top, 20)
        .frame(maxWidth: .infinity, maxHeight: 420)
        .background(LinearGradient(gradient: Gradient(colors: [.ampWhite.opacity(0.7), .ampDarkGray]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(.white.opacity(0.3), lineWidth: 5)
        )
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.3), radius: 20)
    }
}


