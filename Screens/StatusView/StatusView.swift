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
            
            DotElement(offsetX: -134, offsetY: -98)
            DotElement(offsetX: 134, offsetY: -98)
            DotElement(offsetX: 120, offsetY: 116)
            DotElement(offsetX: -164, offsetY: 30)
            
            DotsMenuView()
    
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

struct DotsMenuView: View {
    var body: some View {
        VStack{
            
        }
        .frame(width: 200, height: 200)
        .background()
        .offset(x: -80, y: 270)
    }
}
