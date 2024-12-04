import SwiftUI

struct ButtonView: View {
    
    let name: String
    @Binding var selectedItem: String
    
    var body: some View {
        VStack{
            Text(name)
                .font(.system(size: 16))
                .bold()
                .opacity(selectedItem != name ? 0.5 : 1.0)
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [.blueGray, .icyWhite.opacity(0.6)]),
                        startPoint: .bottomLeading, endPoint: .topTrailing
                    )
                    .shadow(.inner(
                        color: selectedItem == name
                        ? .gray.opacity(0.8)
                        : .clear,
                        radius: 5, x: 5, y: 5))
                    .shadow(.inner(color: selectedItem == name
                                   ? .white.opacity(0.6)
                                   : .clear,
                                   radius: 5, x: -5, y: -5))
                )
                .frame(width: 90, height: 90)
                .shadow(
                    color: selectedItem == name ? .clear : .gray,
                    radius: 12,
                    x: 20,
                    y: 12
                )
                .overlay(
                    ZStack{
                        selectedItem != name
                        ? RoundedRectangle(cornerRadius: 24)
                            .stroke(
                                LinearGradient(
                                    gradient: Gradient(colors: [.gray, .white.opacity(0.3)]),
                                    startPoint: .bottomLeading,
                                    endPoint: .topTrailing
                                ),
                                lineWidth: 1
                            )
                            .frame(width: 90, height: 90)
                            .padding(30)
                        : nil
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 50)
                    }
                )
                .padding(.horizontal, 10)
        }
        
    }
}
