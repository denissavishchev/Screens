import SwiftUI

struct ThemeSwitcherView: View {
    
    @ObservedObject var vm: ThemeViewModel
    
    var body: some View {
        HStack(spacing: 0){
            LightModeView(isDarkMode: vm.isDarkMode)
            
            DarkModeView(isDarkMode: vm.isDarkMode)
        }
        .frame(width: 180, height: 44)
        .background(
            SwitchBackground(isDarkMode: vm.isDarkMode)
        )
        .overlay(
        RoundedRectangle(cornerRadius: 22)
            .stroke(vm.isDarkMode ? .white.opacity(0.2) : .black.opacity(0.1), lineWidth: 1)
        )
        .onTapGesture {
            vm.toggleTheme()
        }
        .shadow(color: .gray.opacity(0.15), radius: 4, x: 0, y: 2)
    }
}

private struct LightModeView: View {
    
    let isDarkMode: Bool
    
    var body: some View {
        ZStack{
            if !isDarkMode{
                HStack(spacing: 8){
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.yellow)
                        .imageScale(.medium)
                    Text("Light")
                        .foregroundColor(.black)
                        .font(.subheadline)
                }
                .padding(.horizontal, 12)
                .frame(height: 36)
            }
        }
        .frame(width: 90)
        .opacity(isDarkMode ? 0.3 : 1)
        .animation(.spring(response: 0.35), value: isDarkMode)
    }
}

private struct DarkModeView: View {
    
    let isDarkMode: Bool
    
    var body: some View {
        ZStack{
            if isDarkMode{
                HStack(spacing: 8){
                    Image(systemName: "moon.fill")
                        .foregroundColor(.blue)
                        .imageScale(.medium)
                    Text("Dark")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
                .padding(.horizontal, 12)
                .frame(height: 36)
            }
        }
        .frame(width: 90)
        .opacity(isDarkMode ? 1 : 0.35)
        .animation(.spring(response: 0.35), value: isDarkMode)
    }
}

private struct SwitchBackground: View {
    
    let isDarkMode: Bool
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 22)
                .fill(isDarkMode ? .black : .white)
            
            Capsule()
                .fill(isDarkMode ? .gray.opacity(0.3) : .blue.opacity(0.1))
                .frame(width: 90)
                .offset(x: isDarkMode ? 45 : -45)
                .animation(.spring(response: 0.35, dampingFraction: 0.7, blendDuration: 1), value: isDarkMode)
        }
    }
}

