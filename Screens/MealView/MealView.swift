import SwiftUI

struct MealView: View {
    
    var body: some View {
        VStack{
            ZStack(alignment: .topLeading){
                TopView()
                Image("Burger")
                    .resizable()
                    .offset(x: 0, y: -60)
                    .scaledToFit()
                    .frame(maxHeight: 250)
                HStack{
                    Spacer()
                    UnevenRoundedRectangle()
                        .frame(width: 150, height: 50)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 0,
                                bottomLeadingRadius: 30,
                                bottomTrailingRadius: 30,
                                topTrailingRadius: 30
                            )
                        )
                        .overlay(
                            Text("Buy now")
                                .font(.system(size: 18))
                                .foregroundColor(.white)
                        )
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .offset(x: -20, y: 230)
                .shadow(color: .gray, radius: 8, x: 5, y: 12)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(
            colors: [.blueGray.opacity(0.5), .blueGray]), startPoint: .leading, endPoint: .trailing))
    }
}

#Preview {
    MealView()
}

