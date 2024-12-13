import SwiftUI

struct SmileView: View {
    
    @State var value: CGFloat = 0.5
    
    var body: some View {
        VStack{
            Text("Rate it...")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.top, 20)
            Spacer(minLength: 0)
            
            HStack(spacing: 25){
                ForEach(1...2, id: \.self){_ in
                    ZStack {
                        Eyes()
                            .stroke(.black, lineWidth: 3)
                            .frame(width: 100)
                        Eyes(value: value)
                            .stroke(.black, lineWidth: 3)
                            .frame(width: 100)
                            .rotationEffect(.init(degrees: 180))
                            .offset(y: -100)
                        Circle()
                            .fill(.black)
                            .frame(width: 13, height: 13)
                            .offset(y: -30)
                        
                    }
                    .frame(height: 100)
                }
            }
            
            Smile(value: value)
                .stroke(.black, lineWidth: 3)
                .frame(height: 100)
                .padding(.top, 40)
            
            Slider(value: $value)
                .padding()
            
            Spacer(minLength: 0)
        }
        .background(
            (value <= 0.3 ? Color(.red) : (value > 0.3 && value <= 0.7 ? Color(.yellow) : Color(.green)))
        .ignoresSafeArea(.all, edges: .all)
        .animation(.easeInOut, value: value)
            )
    }
}

struct Eyes: Shape{
    
    var value: CGFloat?
    
    func path(in rect: CGRect) -> Path{
        return Path{ path in
            
            let center = rect.width / 2
            
            let downRadius: CGFloat = 55 * (value ?? 1)
            
            path.move(to: CGPoint(x: center - 40, y: 0))
            
            let to1 = CGPoint(x: center, y: downRadius)
            let control1 = CGPoint(x: center - 40, y: 0)
            let control2 = CGPoint(x: center - 40, y: downRadius)
            
            let to2 = CGPoint(x: center + 40, y: 0)
            let control3 = CGPoint(x: center + 40, y: downRadius)
            let control4 = CGPoint(x: center + 40, y: 0)
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}


struct Smile: Shape{
    var value: CGFloat
    
    func path(in rect: CGRect) -> Path{
        return Path{ path in
            
            let center = rect.width / 2
            
            let downRadius: CGFloat = (115 * value) - 45
            
            path.move(to: CGPoint(x: center - 150, y: 0))
            
            let to1 = CGPoint(x: center, y: downRadius)
            let control1 = CGPoint(x: center - 145, y: 0)
            let control2 = CGPoint(x: center - 145, y: downRadius)
            
            let to2 = CGPoint(x: center + 150, y: 0)
            let control3 = CGPoint(x: center + 145, y: downRadius)
            let control4 = CGPoint(x: center + 145, y: 0)
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}

#Preview {
    SmileView()
}
