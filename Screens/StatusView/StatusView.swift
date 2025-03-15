import SwiftUI

struct StatusView: View {
    var body: some View {
        ZStack{
            VStack {
                TodaysDateView()
                    .padding(.top, 50)
                Spacer()
            }
            
            ZStack{
               Circle()
                    .frame(width: 300, height: 300)
                    .foregroundStyle(LinearGradient(colors: [.gray, .white], startPoint: .top, endPoint: .bottom))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

        }
        .background(.statusGray)
        
    }
}

#Preview {
    StatusView()
}


