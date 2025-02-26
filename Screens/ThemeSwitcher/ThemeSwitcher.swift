import SwiftUI

struct ThemeSwitcher: View {
    
    @StateObject private var vm = ThemeViewModel()
    
    var body: some View {
        VStack(spacing: 20){
           Text("Theme switcher")
                .font(.system(size: 34, weight: .bold))
                .opacity(vm.isAnimating ? 1 : 0)
                .offset(y: vm.isAnimating ? 0 : -20)
            
            ThemeSwitcherView(vm: vm)
                .scaleEffect(vm.isAnimating ? 1 : 0.5)
            
            VStack(alignment: .leading, spacing: 15){
                InfoRow(systemImage: vm.isDarkMode ? "moon.stars.fill" : "sun.max.fill", title: vm.isDarkMode ? "Dark mode" : "Light mode", subtitle: "Currently active")
                
                Divider()
                    .padding(.vertical, 5)
                
                InfoRow(systemImage: "sparkles", title: "Smooth animation", subtitle: "Spring")
                
                Divider()
                    .padding(.vertical, 5)
                
                InfoRow(systemImage: "gear.circle.fill", title: "Settings", subtitle: "Autosaved")
            }
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(vm.isDarkMode ? .black.opacity(0.5) : .white)
                .shadow(color: .gray.opacity(0.2), radius: 10)
            )
            .padding(.horizontal)
            .opacity(vm.isDarkMode ? 1 : 0)
            .offset(y: vm.isAnimating ? 0 : 50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            vm.isDarkMode ? Color.black.gradient : Color.gray.opacity(0.1).gradient
        )
        .preferredColorScheme(vm.isDarkMode ? .dark : .light)
        .animation(.spring(response: 0.5, dampingFraction: 0.8), value: vm.isDarkMode)
    }
}

#Preview {
    ThemeSwitcher()
}
