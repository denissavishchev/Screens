import SwiftUI

struct ClockView: View {
    
    @State private var name: String = ""
    @State private var color: Color = .clear
    @State private var catalogId: String = ""
    @State private var price: String = ""
    @State private var type: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollItemView(name: $name, color: $color, catalogId: $catalogId, price: $price, type: $type)
                    .zIndex(1)
                HStack{
                    Text(name)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 150)
                .background(.clear)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(color, lineWidth: 3)
                )
                .offset(y: -50)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.ampDark)
        }
    }
}

#Preview {
    ClockView()
}



