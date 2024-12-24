import SwiftUI

struct CarouselView: View {
    
    @State var cvm = CarouselViewModel()
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    //
                }label: {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundColor(.gray)
                }
                Text("Health tips")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.leading)
                Spacer()
            }
            .padding()
            
            ZStack{
                ForEach(cvm.cards.indices.reversed(), id:  \.self){ index in
                    HStack {
                        cvm.cards[index].cardColor
                            .frame(width: getCardWidth(index: index), height: getCardHeight(index: index))
                            .cornerRadius(25)
                            .offset(x: getCardOffset(index: index))
                        Spacer(minLength: 0)
                    }
                    .frame(height: 400)
                    .contentShape(Rectangle())
                    .offset(x: cvm.cards[index].offset)
                    .gesture(DragGesture(minimumDistance: 0)
                        .onChanged({(value) in onChanged(value: value, index: index)})
                        .onEnded({(value) in onEnd(value: value, index: index)}))
                }
            }
            .padding(.top, 25)
            .padding(.horizontal, 30)
            
            Spacer()
        }
        .environmentObject(cvm)
    }
                             
     func onChanged(value: DragGesture.Value, index: Int){
         if value.translation.width < 0 {
             cvm.cards[index].offset = value.translation.width
         }
    }
                             
    func onEnd(value: DragGesture.Value, index: Int){
        cvm.cards[index].offset = 0
    }
    
    func getCardHeight(index: Int) -> CGFloat{
        let height: CGFloat = 400
        let cardHeight = index <= 2 ? CGFloat(index) * 35 : 70
        return height - cardHeight
    }
    
    func getCardWidth(index: Int) -> CGFloat{
        let boxWidth = UIScreen.main.bounds.width - 60 - 60
//        let cardWidth = index <= 2 ? CGFloat(index) * 30 : 60
        return boxWidth
    }
    
    func getCardOffset(index: Int) -> CGFloat{
        return index <= 2 ? CGFloat(index) * 30 : 60
    }
    
}

#Preview {
    CarouselView()
}
