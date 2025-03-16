import SwiftUI

struct StatusView: View {
    
    @StateObject var svm = StatusViewModel()
    
    var body: some View {
        ZStack{
            VStack {
                TodaysDateView(svm: svm)
                    .padding(.top, 50)
                Spacer()
            }
            
            CircularWatchView(svm: svm)
            
            ArcShape()
                .stroke(.gray, lineWidth: 3)
                .frame(width: 330, height: 330)
    
        }
        .background(.statusGray)
        .onAppear {
            svm.setCurrentTime()
            svm.startTimer()
            }
    }
}

#Preview {
    StatusView()
}






