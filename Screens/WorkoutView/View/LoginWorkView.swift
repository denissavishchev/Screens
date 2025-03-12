import SwiftUI

struct LoginWorkView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var isAnimation = false
    
    var body: some View {
        VStack{
            WorkoutTextField(title: "Email", text: $email, iconName: "envelope.fill")
            Spacer()
                .frame(maxHeight: 50)
            WorkoutTextField(title: "Password", text: $password, iconName: "lock.fill", isSecure: true)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    LoginWorkView()
}
