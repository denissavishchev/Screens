import SwiftUI

struct ScrollItemView: View {
    
    @Binding var name: String
    @Binding var color: Color
    @Binding var catalogId: String
    @Binding var price: String
    @Binding var type: String
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 0){
                ForEach(Array(Data.items.enumerated()), id: \.element.id) { index, item in
                    VStack{
                        
                        NavigationLink(destination: DetailView(item: item)) {
                            ZStack {
                                Circle()
                                    .foregroundStyle(LinearGradient(colors: [.bikeGray, .ampGray], startPoint: .top, endPoint: .bottom))
                                    .frame(width: 320)
                                Image(item.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 320)
                            }
                            .shadow(color: .droneDarkGreen.opacity(0.5), radius: 5, x: 2, y: 5)
                        }
                    }
                    
                    .containerRelativeFrame(.horizontal, count: 1, spacing: 10)
                    .frame(width: 340)
                    .background(
                            GeometryReader { geo in
                                Color.clear
                                    .onAppear {
                                        updateNameIfCentered(index: index, geo: geo)
                                    }
                                    .onChange(of: geo.frame(in: .global).midX) {
                                        updateNameIfCentered(index: index, geo: geo)
                                    }
                            }
                        )
                    .scrollTransition{content, phase in
                        content
                            .opacity(phase.isIdentity ? 1 : 0.5)
                    }
                }
            }
            .scrollTargetLayout()
        }
        .contentMargins(16, for: .scrollContent)
        .scrollTargetBehavior(.viewAligned)
    }
    
    private func updateNameIfCentered(index: Int, geo: GeometryProxy) {
            let screenWidth = UIScreen.main.bounds.width
            let midScreenX = screenWidth / 2
            
            let itemMidX = geo.frame(in: .global).midX
            let distance = abs(midScreenX - itemMidX)
            
            if distance < 50 {
                name = Data.items[index].image
                color = Data.items[index].color
                catalogId = Data.items[index].catalogId
                price = Data.items[index].price
                type = Data.items[index].type
            }
        }
    
}

