import SwiftUI

struct BottomContainerOne: View {
    var body: some View {
        HStack(spacing: 3){
                VStack(spacing: 4){
                    ForEach(1...5, id: \.self){i in
                        HStack(spacing: 4){
                            ForEach(i == 1 || i == 5 ? 1...10 : 1...14, id: \.self){j in
                                    Circle()
                                    .frame(width: 7, height: 7)
                                    .foregroundColor(.retroBlack)
                                    .shadow(color: .retroBlack.opacity(0.4), radius: 2, y: -1)
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 90)
                .background(.retroWhite)
                .clipShape(RoundedRectangle(cornerRadius: 5))

            HStack(spacing: 30){
                    ZStack {
                        Circle()
                            .stroke(.retroGray.opacity(0.5), lineWidth: 3)
                            .frame(width: 60, height: 60)
                        Circle()
                            .stroke(LinearGradient(colors: [.retroWhite, .retroGray.opacity(0.4)], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                            .frame(width: 47, height: 47)
                        Circle()
                            .frame(width: 47, height: 47)
                            .foregroundStyle(LinearGradient(colors: [.retroGray.opacity(0.4), .retroWhite, .retroWhite], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .shadow(color: .retroBlack.opacity(0.8), radius: 12, x: 10, y: 10)
                        Circle()
                            .fill(
                                .shadow(.inner(color: .retroBlack.opacity(0.4), radius: 2, x: 2, y: 2))
                            )
                            .frame(width: 12, height: 12)
                            .foregroundColor(.retroWhite)
                            .offset(x: 8, y: -8)
                    }
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 50, height: 50)
                            .foregroundStyle(LinearGradient(colors: [.retroGray.opacity(0.5), .retroWhite, .retroWhite], startPoint: .topLeading, endPoint: .bottomTrailing))
                        Image(systemName: "powersleep")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.retroBlue.opacity(0.6))
                    }
                    .frame(width: 60, height: 60)
                    .background(LinearGradient(stops: [
                        .init(color: .retroWhite, location: 0.2),
                        .init(color: .retroWhite, location: 0.4),
                        .init(color: .retroGray, location: 0.9),],
                               startPoint: .topLeading, endPoint: .bottomTrailing))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(color: .retroBlack.opacity(0.1), radius: 0.5)
                }
                .frame(maxWidth: .infinity, maxHeight: 90)
                .background(.retroWhite)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
        }
        .padding(.horizontal, 4)
        .padding(.top, 3)
    }
}

