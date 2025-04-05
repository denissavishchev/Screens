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
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient(colors: [.black, .bikeGray], startPoint: .bottomLeading, endPoint: .topTrailing))
        
    }
}

#Preview {
    MouseView()
}

struct TopLinesShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX - 32, y: rect.minY + 4))
        path.addLine(to: CGPoint(x: rect.maxX - 60, y: rect.minY + 30))
        path.addLine(to: CGPoint(x: rect.maxX - 80, y: rect.minY + 30))
        path.addLine(to: CGPoint(x: rect.maxX - 100, y: rect.minY + 45))
        path.addEllipse(in: CGRect(x: rect.maxX - 103, y: rect.minY + 43, width: 5, height: 5))

        path.move(to: CGPoint(x: rect.maxX - 27, y: rect.minY + 8))
        path.addLine(to: CGPoint(x: rect.maxX - 57, y: rect.minY + 37))
        path.addLine(to: CGPoint(x: rect.maxX - 58, y: rect.minY + 130))
        path.addLine(to: CGPoint(x: rect.maxX - 80, y: rect.minY + 150))
        path.addEllipse(in: CGRect(x: rect.maxX - 84, y: rect.minY + 149, width: 5, height: 5))
        
        path.move(to: CGPoint(x: rect.maxX - 22, y: rect.minY + 11))
        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 39))
        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 180))
        path.addEllipse(in: CGRect(x: rect.maxX - 52, y: rect.minY + 180, width: 5, height: 5))
       return path
    }
}

struct BottomLinesShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY - 12))
        path.addLine(to: CGPoint(x: rect.minX + 40, y: rect.maxY - 40))
        path.addLine(to: CGPoint(x: rect.minX + 40, y: rect.maxY - 180))
        path.addEllipse(in: CGRect(x: rect.minX + 37, y: rect.maxY - 185, width: 5, height: 5))

//        path.move(to: CGPoint(x: rect.maxX - 27, y: rect.minY + 8))
//        path.addLine(to: CGPoint(x: rect.maxX - 57, y: rect.minY + 37))
//        path.addLine(to: CGPoint(x: rect.maxX - 58, y: rect.minY + 130))
//        path.addLine(to: CGPoint(x: rect.maxX - 80, y: rect.minY + 150))
//        path.addEllipse(in: CGRect(x: rect.maxX - 84, y: rect.minY + 149, width: 5, height: 5))
//        
//        path.move(to: CGPoint(x: rect.maxX - 22, y: rect.minY + 11))
//        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 39))
//        path.addLine(to: CGPoint(x: rect.maxX - 50, y: rect.minY + 180))
//        path.addEllipse(in: CGRect(x: rect.maxX - 52, y: rect.minY + 180, width: 5, height: 5))
       return path
    }
}


struct MouseOverlay: View {
    var body: some View {
        VStack{
            Text("Mouse")
                .font(.system(size: 90, weight: .bold, design: .monospaced))
                .foregroundStyle(LinearGradient(colors: [.gray, .gray.opacity(0.5)], startPoint: .leading, endPoint: .trailing))
            
            Spacer()
        }
    }
}
