import SwiftUI

struct GradientButton: View {
    
    @State private var isPressed = false
    
    var body: some View {
        Button{
            withAnimation(.spring(response: 0.3, dampingFraction: 0.6)){
                isPressed.toggle()
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
                withAnimation(.easeInOut(duration: 0.2)){
                    isPressed = false
                }
            }
        }label: {
            Text("Tap me!")
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 120, height: 120)
                .background(
                    LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomLeading)
                )
                .clipShape(Circle())
                .shadow(color: .blue.opacity(0.5), radius: 10, x: 0, y: 5)
        }
        .scaleEffect(isPressed ? 0.9 : 1)
        .rotation3DEffect(
            isPressed ? .degrees(180) : .degrees(0), axis: (x: 0, y: 1, z: 0)
        )
    }
}
