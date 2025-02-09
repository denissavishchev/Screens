import SwiftUI

struct CapsuleButton: View {
    
    @State private var isPressed = false
    
    var body: some View {
        Button{
            withAnimation(.easeInOut(duration: 0.2)){
                isPressed.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                withAnimation(.easeInOut(duration: 0.2)){
                    isPressed = false
                }
            }
        }label: {
            Text("Slide ->")
                .font(.headline)
                .foregroundColor(.purple)
                .frame(width: 200, height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(.purple, lineWidth: 2)
                        .background(.white)
                        .clipShape(Capsule())
                )
                .shadow(color: .purple.opacity(0.3), radius: 5, x: 0, y: 3)
        }
        .offset(x: isPressed ? 20 : 0)
    }
}
