import SwiftUI
import PolyKit

struct ClockView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 0){
                ForEach(Data.items){item in
                    ZStack {
                        Polygon(count: 6, cornerRadius: 30)
                            .foregroundStyle(item.color.gradient)
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 320)
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

#Preview {
    ClockView()
}


struct Item: Identifiable{
    let id = UUID()
    let color: Color
    let image: String
}

struct Data{
    static var items = [Item(color: .teal, image: "Apocalipse"),
                        Item(color: .pink, image: "Fire"),
                        Item(color: .indigo, image: "Future"),
                        Item(color: .orange, image: "Heart"),
                        Item(color: .purple, image: "Psycho"),
                        Item(color: .yellow, image: "Space"),
                        Item(color: .green, image: "Steam"),
                        Item(color: .blue, image: "Water"),]
}
