import SwiftUI

struct DetailView: View {
    
    let item: Item
    @State private var offsets: [CGFloat] = [0, 40, 80, 120]

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
                        Image(systemName: "star.fill")
                            .font(.title)
                            .fontWeight(.medium)
                            .foregroundStyle(.ampGreen)
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
            
            ZStack(alignment: .bottom){
                ForEach(0..<4, id: \.self) { index in
                    ShuffleContainer(color: getColor(for: index))
                        .offset(y: offsets[index])
                        .onTapGesture {
                            withAnimation(.spring(response: 1, dampingFraction: 0.8)){
                                updateOffsets(for: index)
                            }
                        }
                }
            }
            .frame(maxHeight: .infinity)
            .ignoresSafeArea()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [item.color, .ampGray], startPoint: .topTrailing, endPoint: .bottomLeading))
        .navigationBarHidden(true)
    }
    
    private func updateOffsets(for tappedIndex: Int) {
          for i in 0..<offsets.count {
              offsets[i] = i <= tappedIndex ? 0 + CGFloat(i * 40) : 240 + CGFloat((i - tappedIndex) * 40)
          }
      }

      private func getColor(for index: Int) -> Color {
          let colors: [Color] = [.blue, .green, .orange, .red]
          return colors[index % colors.count]
      }
}

#Preview {
    DetailView(item: Item.init(color: .ampBlue, image: "Water", catalogId: "3425", price: "234", type: "BTC"))
}


struct ShuffleContainer: View {
    
    let color: Color
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 12)
            Image(systemName: "line.3.horizontal.decrease")
                .resizable()
                .scaledToFit()
                .frame(width: 20)
                .foregroundColor(.white)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 430)
        .background(
            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, topTrailing: 40))
                .fill(color)
        )
    }
}

