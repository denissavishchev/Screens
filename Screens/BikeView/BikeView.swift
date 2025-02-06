import SwiftUI

struct BikeView: View {
    var body: some View {
        VStack{
            TopMenu()
            
            BikeUnitView()

            MenuView()
           
        }
        .background(.bikeGray)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    BikeView()
}
