import SwiftUI

struct StaggeredAnimation: View {
    
    @State var isPaused: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "wifi.router")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .symbolEffect(.variableColor.iterative.reversing)
            Spacer()
            
            Button{
                isPaused.toggle()
            }label: {
                Image(systemName: isPaused ? "pause.fill" : "play.fill")
                    .contentTransition(.symbolEffect(.replace.offUp))
            }
                
            VStack(spacing: 12){
                ForEach(1...5, id: \.self){ _ in
                        DummyView()
                }
                Spacer(minLength: 0)
            }
            .padding(15)
        }
    }
    
    @ViewBuilder
    func DummyView() -> some View{
        HStack(spacing: 10){
            Circle()
                .frame(width: 45, height: 45)
            
            VStack(alignment: .leading, spacing: 6){
                RoundedRectangle(cornerRadius: 5)
                    .frame(height: 10)
                    .padding(.trailing, 20)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(height: 10)
                    .padding(.trailing, 140)
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 100, height: 10)
                    
            }
        }
        .foregroundStyle(.gray.opacity(0.7).gradient)
    }
}

#Preview {
    StaggeredAnimation()
}
