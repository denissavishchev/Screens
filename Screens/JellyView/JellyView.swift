import SwiftUI

struct JellyView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack{
                TopButtons()
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(12)
            .ignoresSafeArea()
            
        }
        
    }
}

#Preview {
    JellyView()
}


