import SwiftUI

struct DetailView: View {
    
    let item: Item

    var body: some View {
        VStack {
            HStack{
                BackButtonView()
                
                Spacer()
                
                Button{
                   
                }label: {
                    ZStack{
                        Circle()
                            .frame(width: 34)
                            .foregroundStyle(.black)
                            .opacity(0.3)
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                            .opacity(0.8)
                    }
                }
            }
            .padding(.horizontal, 18)
            
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 320)
                .shadow(color: .black.opacity(0.5), radius: 10, x: 5, y: 5)
            
            VStack{
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [item.color, .ampGray], startPoint: .topTrailing, endPoint: .bottomLeading))
        .navigationBarHidden(true)
    }
}

#Preview {
    DetailView(item: Item.init(color: .ampBlue, image: "Water", catalogId: "3425", price: "234", type: "BTC"))
}

