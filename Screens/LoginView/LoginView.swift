import SwiftUI

struct LoginView: View {
    
    @State private var username = "1"
    @State private var email = ""
    @State private var password = ""
    @State private var isAnimation = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue.opacity(0.1), .purple.opacity(0.1), .blue.opacity(0.05)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            Circle()
                .fill(LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                .opacity(0.05)
                .blur(radius: 60)
            
            ScrollView(showsIndicators: false) {
                VStack{
                    Circle()
                        .fill(LinearGradient(colors: [.blue, .purple.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 80, height: 80)
                        .overlay{
                            Image(systemName: "person.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.white)
                                .opacity(isAnimation ? 1 : 0)
                                .scaleEffect(isAnimation ? 1 : 0)
                                .animation(.spring(response: 0.6, dampingFraction: 0.6).delay(0.1), value: isAnimation)
                        }
                        .shadow(color: .purple.opacity(0.3), radius: 10, x: 0, y: 5)
                        .scaleEffect(isAnimation ? 1 : 0.5)
                        .rotation3DEffect(
                            .degrees(isAnimation ? 360 : 0), axis: (x: 0, y: 1, z: 0)
                        )
                    
                    Text("Welcome")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.purple)
                        .shadow(color: .purple.opacity(0.2), radius: 10, x: 0, y: 5)
                        .offset(x: isAnimation ? 0 : -50)
                        .opacity(isAnimation ? 1 : 0)
                        .animation(.spring(response: 0.6, dampingFraction: 0.7).delay(0.2), value: isAnimation)
                    
                    VStack(spacing: 20){
                        Group{
                            FloatingTextField(title: "Name", text: $username, iconName: "person.circle.fill")
                            FloatingTextField(title: "Email", text: $email, iconName: "envelope.fill")
                            FloatingTextField(title: "Password", text: $password, iconName: "lock.fill", isSecure: true)
                        }
                        .frame(height: 75)
                        .opacity(isAnimation ? 1 : 0)
                        .offset(y: isAnimation ? 0 : 20)
                        .animation(.spring(response: 0.6).delay(0.3), value: isAnimation)
                    }
                    .padding(.horizontal)
                    
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
                                        LinearGradient(colors: [.blue, .pink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .shadow(color: .purple.opacity(0.3), radius: 10, x: 0, y: 5)
                            )
                            .scaleEffect(isAnimation ? 1 : 0.9)
                    }
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                    .opacity(isAnimation ? 1 : 0)
                    .animation(.spring(response: 0.6).delay(0.4), value: isAnimation)
                    
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
                    .opacity(isAnimation ? 1 : 0)
                    .animation(.spring(response: 0.6).delay(0.5), value: isAnimation)
                }
                .padding(.vertical, 30)
            }
            .onAppear{
                withAnimation(.spring(response: 1, dampingFraction: 0.7)){
                    isAnimation = true
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
