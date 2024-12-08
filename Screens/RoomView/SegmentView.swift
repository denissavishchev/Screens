import SwiftUI

struct SegmentView: View {
    
    var body: some View {
        VStack(spacing: 12){
            HStack(spacing: 12){
                Segment(tl: 150, bl: 20, bt: 20, tt: 20)
                Segment(tl: 20, bl: 20, bt: 20, tt: 150)
            }
            HStack(spacing: 12){
                Segment(tl: 20, bl: 150, bt: 20, tt: 20)
                Segment(tl: 20, bl: 20, bt: 150, tt: 20)
            }
        }
    }
}


struct Segment: View {
    
    let tl: CGFloat
    let bl: CGFloat
    let bt: CGFloat
    let tt: CGFloat
    
    var body: some View {
        ZStack{
            UnevenRoundedRectangle()
                .clipShape(.rect(
                    topLeadingRadius: tl,
                    bottomLeadingRadius: bl,
                    bottomTrailingRadius: bt,
                    topTrailingRadius: tt
                ))
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.steamGreen, .black]),
                                                startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(width: 140, height: 140)
            UnevenRoundedRectangle(
                cornerRadii: .init(
                    topLeading: tl,
                    bottomLeading: bl,
                    bottomTrailing: bt,
                    topTrailing: tt),
                style: .continuous)
            .stroke(lineWidth: 10)
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.steamBrown, .steamGreen]),
                                            startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(width: 136, height: 136)
                
        }
    }
}
