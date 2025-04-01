import SwiftUI

struct MagicView: View {
    var body: some View {
        ZStack{
           Image("Chandra")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 16, bottomLeading: 8, bottomTrailing: 8, topTrailing: 16))
                        .frame(width: UIScreen.main.bounds.width - 36, height: 50)
                        .foregroundStyle(LinearGradient(colors: [.magicWhite, .magicRed], startPoint: .leading, endPoint: .trailing))
                        .shadow(color: .black.opacity(0.8), radius: 3, x: 2, y: 2)
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 12, bottomLeading: 6, bottomTrailing: 6, topTrailing: 12))
                        .frame(width: UIScreen.main.bounds.width - 48, height: 38)
                        .foregroundColor(.magicYellow)
                        .shadow(color: .black, radius: 2, x: -1)
                    HStack{
                        Text("Chandra, Awakened")
                            .font(Font.custom("Planewalker", size: 24))
                            .foregroundColor(.black)
                            .padding(.top, 6)
                        Spacer()
                        HStack(spacing: 2){
                            ForEach(1...3, id: \.self){ _ in
                                ZStack {
                                    Circle()
                                        .frame(width: 28, height: 28)
                                        .foregroundColor(.magicWhite)
                                        .shadow(color: .black, radius: 2, x: -1, y: 2)
                                    Image("Plain")
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 30)
                }
                .frame(width: UIScreen.main.bounds.width)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MagicView()
}
