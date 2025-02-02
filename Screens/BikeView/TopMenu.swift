import SwiftUI

struct TopMenu: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "arrowshape.left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundColor(.steamWhite)
                Spacer()
                Text("DevisVelo")
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.steamWhite)
                Spacer()
                Image(systemName: "basket")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundColor(.steamWhite)
            }
            .frame(maxWidth: .infinity, maxHeight: 20)
            .background(.bikeGray)
            .padding(.horizontal, 24)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.black)
                .padding(.bottom, 6)
        }
    }
}
