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
            .background(.steamGray)
            .cornerRadius(44)
            .overlay(
            RoundedRectangle(cornerRadius: 44)
                .stroke(lineWidth: 2)
                .foregroundColor(.steamBrown.opacity(0.6))
                .frame(maxWidth: .infinity, maxHeight: 160)
            )
            Spacer()
        }
        .padding(12)
        .background(.steamWhite)
        .ignoresSafeArea()
    }
}

#Preview {
    RoomView()
}




