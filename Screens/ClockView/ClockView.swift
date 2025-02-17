import SwiftUI

struct ClockView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollItemView()
                    .zIndex(1)
                HStack{
                    
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 150)
                .background(.vermilion)
                .clipShape(RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
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



