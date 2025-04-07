import SwiftUI

struct BlueShapeView: View {
    
    private let images: [String] = ["computermouse.fill", "wifi", "car.fill"]
    
    var body: some View {
        ZStack{
            BlueShape()
                .foregroundStyle(LinearGradient(colors: [.bikeGray, .bikeLightGray], startPoint: .topTrailing, endPoint: .bottomLeading))
                .shadow(color: .black, radius: 2)
            VStack{
                ForEach(images, id: \.self){image in
                    ZStack {
                        BlueSubShape()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(LinearGradient(colors: [.bikeGray, .bikeLightGray], startPoint: .topTrailing, endPoint: .bottomLeading))
                            .shadow(color: .black, radius: 2)
                        .padding(.bottom, 4)
                        Image(systemName: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .shadow(color: .white, radius: 5)
                            .offset(x: 2, y: -5)
                    }
                }
                
            }
        }
        .frame(width: 80, height: 220)
        .offset(x: 110, y: 240)
    }
}

struct BlueShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - 10))
        path.addLine(to: CGPoint(x: rect.maxX - 10, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minY + 30, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minY, y: rect.maxY - 30))

       return path
    }
}

struct BlueSubShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - 10, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + 10))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minY + 25, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minY, y: rect.maxY - 25))

       return path
    }
}
