import SwiftUI

struct MagicView: View {
    var body: some View {
        ZStack{
           Image("Chandra")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                ManaView()
                Spacer()
                ZStack(alignment: .top){
                    Description()
                        .padding(.top, 20)
                    DescriptionShape()
                        .foregroundStyle(LinearGradient(colors: [.magicWhite, .magicRed, .magicRed], startPoint: .leading, endPoint: .trailing))
                        .shadow(color: .black, radius: 5)
                        .shadow(color: .black.opacity(0.5), radius: 5)
                    LegendaryView()
                }
                .frame(width: UIScreen.main.bounds.width - 36, height: 250)
                .padding(.bottom, 50)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MagicView()
}



struct Description: View {
    var body: some View {
        ZStack{
            VStack{
                Color(.magicSilver)
                    .opacity(0.6)
                Color(.magicSilver)
                    .opacity(0.2)
                    .frame(height: 60)
                Color(.magicSilver)
                    .opacity(0.6)
            }
            .padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width - 70, height: 210)
    }
}


