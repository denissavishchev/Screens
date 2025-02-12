import SwiftUI

struct BottomContainerTwo: View {
    
    let images: [String] = ["circle.fill", "play.fill", "square.fill", "gearshape"]
    
    var body: some View {
        HStack(spacing: 3){
            ForEach(images, id: \.self){image in
                ZStack{
                    Circle()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.retroWhite)
                        .shadow(color: .retroBlack.opacity(0.4), radius: 5, x: 8, y: 8)
                        .shadow(color: .white, radius: 5, x: -8, y: -8)
                    Circle()
                        .stroke(.retroGray.opacity(0.05), lineWidth: 1)
                        .frame(width: 70, height: 70)
                    Image(systemName: image)
                        .foregroundColor(image == "circle.fill" ? .retroRed : .retroBlack)
                }
                .frame(maxWidth: .infinity, maxHeight: 90)
                .background(.retroWhite)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            }
        }
        .padding(.horizontal, 4)
    }
}
