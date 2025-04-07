import SwiftUI

struct MouseView: View {
    
    var body: some View {
        ZStack{
            MouseShape()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .shadow(color: .black, radius: 3)
                .overlay{
                    MouseOverlay()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.black, .bikeLightGray, .bikeLightGray], startPoint: .bottomLeading, endPoint: .topTrailing)
                )
                .padding(18)
            
            Image("Mouse")
                .resizable()
                .scaledToFit()
                .frame(width: 280)
                .offset(x: -10)
                .shadow(color: .black, radius: 10, y: 5)
            TringleShape()
                .frame(width: 20, height: 20)
                .offset(x: 150, y: 350)
                .foregroundColor(.mouseGreen)
                .shadow(color: .mouseGreen, radius: 3)
            TopLinesShape()
                .stroke(.mouseGreen, lineWidth: 3)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .shadow(color: .mouseGreen, radius: 5)
                .padding(18)
            BottomLinesShape()
                .stroke(
                    .mouseGreen,
                    style: StrokeStyle(lineWidth: 5, lineCap: .round)
                )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .shadow(color: .mouseGreen, radius: 8)
                .padding(18)
            RGBView()
            BlueShapeView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.black, .bikeGray], startPoint: .bottomLeading, endPoint: .topTrailing))
        
    }
}

#Preview {
    MouseView()
}


