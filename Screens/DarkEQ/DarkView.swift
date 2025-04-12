import SwiftUI

struct DarkView: View {
    
    @State private var selected: Int = 0
    
    
    var body: some View {
        VStack{
            VolumeView()
            Spacer()
                .frame(height: 60)
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

struct VolumeView: View {
    
    @State var volume: Int = 0
    @State var angle: Double = 0
    
    var body: some View {
        ZStack{
            ForEach(0...50, id: \.self) { i in
                let angle = Double(i) / Double(50) * 360
                let radius: CGFloat = 120
                
                ZStack {
                    RoundedRectangle(cornerRadius: 2)
                        .frame(width: 3, height: 18)
                        .foregroundColor(i < volume / 2 + 1 ? .turco : .gray.opacity(0.1))
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(i < volume / 2 + 1 ? .black : .black.opacity(0.3), lineWidth: 0.5)
                        .frame(width: 4, height: 20)
                }
                .offset(y: -radius)
                .rotationEffect(.degrees(angle))
            }
            ZStack {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(.red)
//                Circle()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(.blue)
//                    .offset(y: -80)
//                    .rotationEffect(.degrees(angle * .pi))
                VStack {
                    Text("\(volume)")
                    Text("\(angle)")
                }
                    
            }
            .gesture(
                DragGesture()
                    .onChanged(onDrag(value:))
            )
            
        }
        .frame(height: 180)
    }
    func onDrag(value: DragGesture.Value){
        let vector = CGVector(dx: value.location.x, dy: value.location.y)
        let radians = atan2(vector.dy - 10, vector.dx - 10)
        var angle  = radians * 180 / .pi
        if angle < 0{angle = 360 + angle}
        withAnimation(Animation.linear(duration: 0.3)){
            self.angle = Double(angle)
            self.volume = Int(angle)
        }
    }
}
