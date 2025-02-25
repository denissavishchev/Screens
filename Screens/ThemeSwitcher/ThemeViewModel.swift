import SwiftUI

class ThemeViewModel: ObservableObject{
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    @Published var isAnimating: Bool = false
    
    func startAnimation(){
        withAnimation(.spring(response: 0.8, dampingFraction: 0.8)){
            isAnimating = true
        }
    }
    
    func toggleTheme(){
        withAnimation(.spring(response: 0.35, dampingFraction: 0.7, blendDuration: 1)){
            isDarkMode.toggle()
        }
    }
    
}
