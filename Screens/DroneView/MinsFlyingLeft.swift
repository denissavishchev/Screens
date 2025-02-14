import SwiftUI

struct MinsFlyingLeft: View {
    var body: some View {
        HStack{
            ZStack {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.droneGreen.opacity(0.2))
                Circle()
                    .trim(from: 0, to: 0.75)
                    .stroke(.droneYellow, lineWidth: 2)
                    .frame(width: 40, height: 40)
                    .rotationEffect(.degrees(-90))
                Circle()
                    .trim(from: 0, to: 0.65)
                    .stroke(.droneYellow, style: StrokeStyle(lineWidth: 2, dash: [2, 2]))
                    .frame(width: 30, height: 30)
                    .rotationEffect(.degrees(-90))
                Circle()
                    .trim(from: 0, to: 0.55)
                    .stroke(.droneYellow, style: StrokeStyle(lineWidth: 2, dash: [2, 2]))
                    .frame(width: 20, height: 20)
                    .rotationEffect(.degrees(-90))
            }
            Text("26")
                .font(.system(size: 32, weight: .semibold, design: .rounded))
                .foregroundColor(.ampWhite)
            VStack(alignment: .leading){
                Text("MINS")
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
                Text("FLYING LEFT")
                    .font(.system(size: 10, weight: .semibold, design: .rounded))
                    .foregroundColor(.ampWhite.opacity(0.7))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .padding(.leading, 18)
    }
}
