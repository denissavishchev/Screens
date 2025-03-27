import SwiftUI

struct ColorPickerView: View {
    
    var body: some View {
        VStack{
            ColorPickerSliderView()
            Spacer()
                .frame(height: 100)
            CircularColorPicker()
            Spacer()
                .frame(height: 100)
        }
    }
}

#Preview {
    ColorPickerView()
}


struct CircularColorPicker: View {
    
    @State var currentColor: Color = .white
    @State var dragPosition: CGPoint = CGPoint(x: 150, y: 150)
    @State var selectedColor: Color = .white
    
    let circleSize: CGFloat = 300
    
    var body: some View {
        VStack{
            Text("")
        }
        .padding()
    }
    
    private func getColor(at point: CGPoint, center: CGPoint, radius: CGFloat) -> Color{
        let dx = point.x - center.x
        let dy = point.y - center.y
        var angle = atan2(dy, dx)
        if angle < 0{
            angle += 2 * .pi
        }
        let hue = angle / (2 * .pi)
        let distance = sqrt(dx * dx + dy * dy)
        let saturation = min(distance / radius, 1)
        
        return Color(hue: hue, saturation: saturation, brightness: 1)
    }
}
