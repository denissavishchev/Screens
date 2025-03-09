import SwiftUI

struct AvatarBarItem: View {
    var body: some View {
        HStack{
            Image("Cat")
                .resizable()
                .frame(width: 40, height: 40)
                .background(
                    Circle()
                        .foregroundColor(.ampWhite)
                )
            Spacer()
            VStack{
                Text("Hello, John")
                    .font(.system(size: 14, weight: .bold, design: .monospaced))
                    .foregroundColor(.white)
                Text("Today is 25 Mar")
                    .font(.system(size: 10, weight: .semibold, design: .monospaced))
                    .foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "bell")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.white.opacity(0.6))
                .padding(12)
                .background(
                    Circle()
                        .foregroundColor(.ampWhite.opacity(0.1))
                )
        }
        .padding(.horizontal, 18)
    }
}
