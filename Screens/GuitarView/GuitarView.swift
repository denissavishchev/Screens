import SwiftUI

struct GuitarView: View {
    
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                HStack {
                    LogoView()
                    Spacer()
                    WoodView()
                }
                .padding(.horizontal)
                .frame(width: UIScreen.main.bounds.width)
                Spacer()
                Wave()
                    .fill(.black)
                    .frame(width: UIScreen.main.bounds.width, height: 320)
                    .overlay(alignment: .bottom){
                        BottomView()
                    }
            }
            .ignoresSafeArea()
            Image("Ibanez")
                .resizable()
                .padding(.bottom, 120)
                .scaledToFill()
                .shadow(color: .blue.opacity(0.8), radius: 4)
                .shadow(color: .white.opacity(0.4), radius: 4)
            Image("Signature")
                .resizable()
                .foregroundStyle(.white.opacity(0.75))
                .frame(width: 125, height: 90)
                .offset(x: -130, y: 150)
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(LinearGradient(gradient: Gradient(
            colors: [.white, .brown.opacity(0.57)]), startPoint: .leading, endPoint: .trailing))
    }
}

#Preview {
    GuitarView()
}
