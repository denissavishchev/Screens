import SwiftUI

struct LoginWorkView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            WorkoutTextField(title: "Email", text: $email, iconName: "envelope.fill")
            Spacer()
                .frame(maxHeight: 50)
            WorkoutTextField(title: "Password", text: $password, iconName: "lock.fill", isSecure: true)
            
            SignInButton()
            
            NoAccountWidget()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    LoginWorkView()
}
