import SwiftUI

struct TopContainer: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                Text("Sunday, August 18")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(.retroWhite.opacity(0.7))
                Text("18:18")
                    .font(.system(size: 70, weight: .semibold, design: .rounded))
                    .foregroundColor(.retroWhite.opacity(0.8))
                
                HStack(alignment: .bottom,spacing: 20){
                    Text("Good luck every day")
                        .font(.system(size: 12, weight: .semibold, design: .rounded))
                        .foregroundColor(.retroWhite.opacity(0.7))
                    CircularIcon(value: 0.7, icon: "airpods")
                        .padding(.trailing, 12)
                    CircularIcon(value: 0.5, icon: "iphone.homebutton")
                
                }
                .padding(.bottom, 20)
                ZStack(alignment: .leading){
                    Rectangle()
                        .stroke(.retroGray.opacity(0.5), lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 5)
                    Rectangle()
                        .frame(maxWidth: UIScreen.main.bounds.width - 150, maxHeight: 5)
                        .foregroundColor(.retroBlue)
                    Rectangle()
                        .frame(maxWidth: UIScreen.main.bounds.width - 320, maxHeight: 5)
                        .foregroundColor(.retroWhite)
                }
                .padding(.horizontal, 12)
                ZStack(alignment: .leading){
                    Rectangle()
                        .stroke(.retroGray.opacity(0.5), lineWidth: 1)
                        .frame(maxWidth: .infinity, maxHeight: 5)
                    Rectangle()
                        .frame(maxWidth: UIScreen.main.bounds.width - 180, maxHeight: 5)
                        .foregroundColor(.retroRed.opacity(0.7))
                    Rectangle()
                        .frame(maxWidth: UIScreen.main.bounds.width - 280, maxHeight: 5)
                        .foregroundColor(.retroWhite)
                }
                .padding(.horizontal, 12)
            }
            .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, maxHeight: 330)
        .background(.retroBlack)
        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(
            topLeading: 50,
            bottomLeading: 8,
            bottomTrailing: 8,
            topTrailing: 50
        )))
        .padding(.horizontal, 3)
        .padding(.top, 4)
    }
}
