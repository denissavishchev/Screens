import SwiftUI

struct CinemaView: View {
    
    var body: some View {
        VStack {
            TicketsView()
            SeatsView()
        }
        .background(.black)
        
        .ignoresSafeArea(edges: .bottom)
    }
}



#Preview {
    CinemaView()
}


