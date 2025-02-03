import SwiftUI

struct BikeView: View {
    var body: some View {
        VStack{
            TopMenu()
            
            BikeUnitView()

            ZStack(alignment:. bottom){
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 0,
                    bottomLeading: 30,
                    bottomTrailing: 0,
                    topTrailing: 30
                ))
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.bikeLightBlue, .bikeBlue]), startPoint: .leading, endPoint: .trailing))
                .shadow(color: .black.opacity(0.5), radius: 10, x: 10, y: 10)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 0,
                    bottomLeading: 30,
                    bottomTrailing: 0,
                    topTrailing: 30
                ))
                .foregroundColor(.bikeLightGray)
                .frame(maxWidth: .infinity, maxHeight: 400)
                
                UnevenRoundedRectangle(cornerRadii: .init(
                    topLeading: 0,
                    bottomLeading: 10,
                    bottomTrailing: 0,
                    topTrailing: 10
                ))
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [.bikeLightBlue, .bikeBlue]), startPoint: .leading, endPoint: .trailing))
                .frame(maxWidth: 200, maxHeight: 60)
                .offset(x: 80, y: 20)
            }
            .padding(.horizontal, 32)
            .padding(.bottom, 24)
           
        }
        .background(.bikeGray)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    BikeView()
}



