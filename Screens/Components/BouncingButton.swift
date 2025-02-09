import SwiftUI

struct BouncingButton: View {
    
    @State private var isPressed = false
    @State private var isBoucing = false
    
    var body: some View {
        Button{
            withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)){
                isPressed.toggle()
                isBoucing.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                withAnimation(.spring()){
                    isPressed = false
                }
            }
        }label: {
            Text("Bounce!")
                .font(.headline.bold())
                .foregroundColor(.white)
                .frame(width: 160, height: 60)
                .background(
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.green)
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(.white, lineWidth: 2)
                            .blur(radius: 4)
                            .opacity(isBoucing ? 0.7 : 0)
                    }
                )
                .shadow(color: .green.opacity(0.5), radius: isBoucing ? 15 : 5)
        }
        .scaleEffect(isBoucing ? 1.1 : 1)
        .offset(y: isBoucing ? -10 : 0)
        .animation(.spring(response: 05, dampingFraction: 03, blendDuration: 03), value: isBoucing)
    }
}
