import SwiftUI

struct RoomView: View {
    var body: some View {
        VStack{
            Image("Room")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .cornerRadius(44)
            HStack{
                SofaView()
                Spacer()
                ControlView()
                
            }
            .frame(maxWidth: .infinity, maxHeight: 160)
            .background(Color(.systemGray5))
            .cornerRadius(44)
            Spacer()
        }
        .padding(12)
        .ignoresSafeArea()
    }
}

#Preview {
    RoomView()
}




