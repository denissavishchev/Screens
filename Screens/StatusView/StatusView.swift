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




