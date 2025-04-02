import SwiftUI

struct MagicView: View {
    var body: some View {
        ZStack{
           Image("Chandra")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                ManaView()
                Spacer()
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MagicView()
}



