import SwiftUI

struct DarkView: View {
    
    var body: some View {
        VStack{
            SlidersView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.eqGray, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    DarkView()
}




