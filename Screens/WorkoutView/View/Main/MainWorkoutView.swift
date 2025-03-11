import SwiftUI

struct MainWorkoutView: View {
    
    var body: some View {
        VStack {
            AvatarBarItem()
            
            DailyChallengeItem()
            
            ChallengeView()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 30)
        .background(Color.black)
        .ignoresSafeArea(edges: .bottom)
        .navigationBarHidden(true)
    }
}

#Preview {
    MainWorkoutView()
}

