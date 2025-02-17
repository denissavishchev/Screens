import SwiftUI

struct ScrollItemView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 0){
                ForEach(Data.items){item in
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
}

