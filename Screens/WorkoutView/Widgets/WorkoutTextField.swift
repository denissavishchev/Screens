import SwiftUI

struct WorkoutTextField: View {
    
    let title: String
    @Binding var text: String
    @State private var isEditing = false
    let iconName: String
    var isSecure: Bool = false
    @State private var showPassword = false
    
    var body: some View {
        ZStack(alignment: .leading){
            HStack(spacing: 15){
                Image(systemName: iconName)
                    .foregroundColor(isEditing ? .white : .gray)
                    .font(.system(size: 16, weight: isEditing ? .bold : .regular))
                    .frame(width: 40, height: 40)
                    .background(
                        Circle()
                            .fill(
                                isEditing
                                ? LinearGradient(colors: [.blue, .purple.opacity(0.8)], startPoint: .topLeading, endPoint: .bottomTrailing)
                                : LinearGradient(colors: [.gray.opacity(0.1), .gray.opacity(0.15)], startPoint: .topLeading, endPoint: .bottom)
                            )
                    )
                    .shadow(color: isEditing ? .purple.opacity(0.3) : .clear, radius: 5, x: 0, y: 2)
                    .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isEditing)
                
                VStack(alignment: .leading, spacing: 0){
                    Text(title)
                        .font(.system(size: isEditing || !text.isEmpty ? 12 : 16, weight: isEditing ? .medium : .regular))
                        .foregroundColor(isEditing || !text.isEmpty ? .purple : .gray.opacity(0.8))
                        .offset(
                            x: isEditing || !text.isEmpty ? -40 : 0,
                            y: isEditing || !text.isEmpty ? -28 : 0
                        )
                        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isEditing)
                    
                    if isSecure{
                        HStack(spacing: 8){
                            
                                TextField("", text: $text){ editing in
                                    withAnimation(.spring(response: 0.7, dampingFraction: 0.7)){
                                        isEditing = editing
                                    }
                                }
                                .foregroundColor(showPassword ? .black : .clear)
                                .textContentType(.oneTimeCode)
                                .keyboardType(.default)
                                            .autocapitalization(.none)
                                            .disableAutocorrection(true)
                                            .overlay(
                                                Group {
                                                    if !showPassword {
                                                        Text(String(repeating: "*", count: text.count))
                                                            .frame(maxWidth: .infinity, alignment: .leading)
                                                            .padding(.horizontal, 5)
                                                            .foregroundColor(.black)
                                                            .allowsHitTesting(false)
                                                    }
                                                }
                                            )
                            
                            
                            Button{
                                withAnimation(.spring(response: 0.3)){
                                    showPassword.toggle()
                                }
                                }label:{
                                    Image(systemName: showPassword ? "eye.fill" : "eye.slash.fill")
                                        .foregroundColor(isEditing ? .purple.opacity(0.8) : .gray)
                                        .frame(width: 20, height: 20)
                                        .contentShape(Rectangle())
                            }
                                .buttonStyle(.plain)
                        }
                        .tint(.purple)
                    } else{
                        TextField("", text: $text){ editing in
                            withAnimation(.spring(response: 0.7, dampingFraction: 0.7)){
                                isEditing = editing
                            }
                        }
                        .textContentType(iconName == "envelope.fill" ? .emailAddress : .username)
                        .tint(.purple)
                    }
                    Spacer()
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
        }
        .background(
            ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                
                RoundedRectangle(cornerRadius: 16)
                    .trim(from: text.isEmpty ? 0.65 : 0.3, to: isEditing ? 1 : 0.9)
                    .stroke(LinearGradient(colors: [.blue, .purple], startPoint: text.isEmpty ? .leading : .trailing, endPoint: text.isEmpty ? .trailing : .leading),
                            style: StrokeStyle(lineWidth: isEditing ? 3 : 2, lineCap: .round)
                    )
                    .opacity(isEditing ? 0.8 : 0.3)
                    .blur(radius: isEditing ? 0 : 0.5)
                    .animation(.spring(response: 0.4, dampingFraction: 0.7), value: text)
                    .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isEditing)
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        LinearGradient(colors: [.blue.opacity(isEditing ? 0.1 : 0.02), .purple.opacity(isEditing ? 0.1 : 0.02)], startPoint: .bottomLeading, endPoint: .topTrailing)
                    )
            }
        )
        .frame(height: 40)
        .shadow(color: isEditing ? .purple.opacity(0.15) : .black.opacity(0.05), radius: isEditing ? 10 : 5, x: 0, y: 3)
        .animation(.spring(response: 0.3, dampingFraction: 0.7), value: isEditing)
        .padding(18)
    }
}
