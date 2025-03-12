import SwiftUI

struct SignInButton: View {
    
    var body: some View {
        Button{
            withAnimation(.spring(response: 0.3)){
                
            }
        }label: {
            Text("Sign in")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(colors: [.ampGreen, .pink], startPoint: .leading, endPoint: .trailing)
                        )
                        .shadow(color: .purple.opacity(0.3), radius: 10, x: 0, y: 5)
                )
        }
        .padding(.horizontal, 30)
        .padding(.top, 20)
    }
}

struct NoAccountWidget: View {
    var body: some View {
        HStack{
            Text("Don't have an account?")
                .foregroundColor(.gray.opacity(0.8))
            Button{
                
            }label: {
                Text("Sign Up")
            }
            .foregroundColor(.purple)
            .fontWeight(.semibold)
        }
    }
}

