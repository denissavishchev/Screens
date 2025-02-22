import SwiftUI

struct DetailView: View {
    
    let item: Item
    @State private var offset1: CGFloat = 240
    @State private var offset2: CGFloat = 280
    @State private var offset3: CGFloat = 320

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
                ShuffleContainerOne()
                    .onTapGesture {
                        withAnimation{
                            offset1 = 240
                            offset2 = 280
                            offset3 = 320
                        }
                    }
                ShuffleContainerTwo()
                    .offset(y: offset1)
                    .onTapGesture {
                        withAnimation{
                            offset1 = 40
                            offset2 = 280
                            offset3 = 320
                        }
                    }
                ShuffleContainerThree()
                    .offset(y: offset2)
                    .onTapGesture {
                        withAnimation{
                            offset1 = 40
                            offset2 = 80
                            offset3 = 320
                        }
                    }
                ShuffleContainerFour()
                    .offset(y: offset3)
                    .onTapGesture {
                        withAnimation{
                            offset1 = 40
                            offset2 = 80
                            offset3 = 120
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
}

#Preview {
    DetailView(item: Item.init(color: .ampBlue, image: "Water", catalogId: "3425", price: "234", type: "BTC"))
}


struct ShuffleContainerOne: View {
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 12)
            Image(systemName: "line.3.horizontal.decrease")
                .resizable()
                .scaledToFit()
                .frame(width: 20)
            
            VStack{
                Color.white
                    .padding(.horizontal, 18)
            }
            .padding(.horizontal, 18)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 430)
        .background(.blue)
        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, topTrailing: 40)))
        
    }
}

struct ShuffleContainerTwo: View {
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 12)
            Image(systemName: "line.3.horizontal.decrease")
                .resizable()
                .scaledToFit()
                .frame(width: 20)
           
            Spacer()
        }
        
        .frame(maxWidth: .infinity, maxHeight: 430)
        .background(.red)
        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, topTrailing: 40)))
    }
}

struct ShuffleContainerThree: View {
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 12)
            Image(systemName: "line.3.horizontal.decrease")
                .resizable()
                .scaledToFit()
                .frame(width: 20)
            Spacer()
        }
        
        .frame(maxWidth: .infinity, maxHeight: 430)
        .background(.green)
        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, topTrailing: 40)))
    }
}

struct ShuffleContainerFour: View {
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 12)
            Image(systemName: "line.3.horizontal.decrease")
                .resizable()
                .scaledToFit()
                .frame(width: 20)
            Spacer()
        }
        
        .frame(maxWidth: .infinity, maxHeight: 430)
        .background(.yellow)
        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 40, topTrailing: 40)))
    }
}
