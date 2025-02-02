import SwiftUI

struct BikeView: View {
    var body: some View {
        VStack{
            TopMenu()
            
            BikeUnitView()

            Spacer()
        }
        .background(.bikeGray)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    BikeView()
}



