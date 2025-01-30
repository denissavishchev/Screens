import SwiftUI

struct TopButtons: View {
    var body: some View {
        HStack{
            LeftButton()
            Text("Water")
                .font(.system(size: 26, weight: .bold, design: .rounded))
                .padding(.leading, 12)
                .offset(y: 24)
                .foregroundColor(.icyWhite)
                .shadow(color: .watchBlue, radius: 5)
            Spacer()
            RightButton()
        }
    }
}

struct LeftButton: View {
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 200,
                bottomLeading: 15,
                bottomTrailing: 10,
                topTrailing: 15
            ))
            .foregroundColor(.jellyGray)
            .shadow(color: .black.opacity(0.6), radius: 10, x: 3, y: 5)
            .frame(width: 80, height: 80)
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 200,
                bottomLeading: 15,
                bottomTrailing: 10,
                topTrailing: 15
            ))
            .stroke(.black.opacity(0.2), lineWidth: 2)
            .foregroundColor(.jellyGray)
            .frame(width: 80, height: 80)
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFit()
                .frame(width: 16)
                .foregroundColor(.white.opacity(0.6))
                .padding(.leading, 10)
                .padding(.top, 10)
        }
    }
}

struct RightButton: View {
    var body: some View {
        ZStack {
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 15,
                bottomLeading: 10,
                bottomTrailing: 15,
                topTrailing: 200
            ))
            .foregroundColor(.ampNavy)
            .shadow(color: .black.opacity(0.6), radius: 10, x: 3, y: 5)
            .frame(width: 80, height: 80)
            UnevenRoundedRectangle(cornerRadii: .init(
                topLeading: 15,
                bottomLeading: 10,
                bottomTrailing: 15,
                topTrailing: 200
            ))
            .stroke(.black.opacity(0.2), lineWidth: 2)
            .foregroundColor(.jellyGray)
            .frame(width: 80, height: 80)
            Image("Cat")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .foregroundColor(.white.opacity(0.6))
                .offset(x: -5, y: 4)
            
        }
    }
}


