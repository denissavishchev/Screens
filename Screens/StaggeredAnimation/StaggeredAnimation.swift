import SwiftUI

struct StaggeredAnimation: View {
    var body: some View {
        VStack(spacing: 12){
            ForEach(1...10, id: \.self){ _ in
                    DummyView()
            }
            Spacer(minLength: 0)
        }
        .padding(15)
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
