import SwiftUI

private let rating = 4

struct LogoView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Bass Guitar")
                .font(.system(size: 14))
                .bold()
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150)
                .shadow(color: .blue.opacity(0.25), radius: 4)
            HStack{
                Text("SR2605")
                    .foregroundColor(.black)
                    .bold()
                ForEach(1..<6){i in
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundStyle(rating < i ? .gray : .black)
                }
            }
            Image("Premium")
                .resizable()
                .scaledToFit()
                .frame(width: 130)
                .shadow(color: .blue.opacity(0.25), radius: 4)
        }
    }
}
