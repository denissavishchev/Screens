import SwiftUI

struct TopDronView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "point.3.filled.connected.trianglepath.dotted")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding()
                    .foregroundColor(.retroWhite.opacity(0.7))
                    .background(.retroWhite.opacity(0.1), in: .rect(cornerRadius: 12))
                Spacer()
                HStack{
                    Image(systemName: "dot.radiowaves.left.and.right")
                        .foregroundColor(.ampGreen)
                    Text("Connected")
                        .font(.system(size: 18, design: .rounded))
                        .foregroundColor(.retroWhite)
                }
                .frame(width: 150, height: 40)
                .background(.retroWhite.opacity(0.2))
                .clipShape(Capsule())
                Spacer()
                Image(systemName: "person.icloud.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding()
                    .foregroundColor(.retroWhite.opacity(0.7))
                    .background(.retroWhite.opacity(0.1), in: .rect(cornerRadius: 12))
            }
            .padding(.horizontal, 18)
            Text("STEAM GREEN 02")
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .foregroundColor(.retroWhite)
            Text("Multiland Aircraft")
                .font(.system(size: 15, weight: .bold, design: .rounded))
                .foregroundColor(.retroWhite)
                .padding(.bottom, 12)
            
            Image("Drone")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
        }
    }
}
