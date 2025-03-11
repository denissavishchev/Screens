import SwiftUI

struct StatisticsView: View {
    var body: some View {
        VStack{
            Text("My statistics")
                .font(.system(size: 16, weight: .bold, design: .monospaced))
                .foregroundColor(.white)
            
            StatisticsChartsView()
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea(edges: .bottom)
        .navigationBarHidden(true)
    }
}

#Preview {
    StatisticsView()
}

