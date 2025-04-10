import SwiftUI

struct DarkView: View {
    
    @State private var selected: Int = 0
    
    var body: some View {
        VStack{
            SlidersView()
            Spacer()
                .frame(height: 20)
            ZStack {
                HStack(spacing: 2){
                    PreButton(index: 1, name: "PRE-1", tl: 20, bl: 20, bt: 0, tt: 0, selectedButton: $selected)
                    PreButton(index: 2, name: "PRE-2", tl: 0, bl: 0, bt: 0, tt: 0, selectedButton: $selected)
                    PreButton(index: 3, name: "PRE-3", tl: 0, bl: 0, bt: 20, tt: 20, selectedButton: $selected)
                    
                }
                .frame(width: 320, height: 54)
                .background(LinearGradient(colors: [.black, .black.opacity(0.5)], startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: .white.opacity(0.2), radius: 5, x: -3, y: -3)
                .shadow(color: .black, radius: 5, x: 3, y: 3)
                Capsule()
                    .stroke(.eqGray ,lineWidth: 1)
                    .frame(width: 320, height: 54)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.eqGray, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    DarkView()
}
