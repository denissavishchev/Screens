import SwiftUI

struct FloatingTextField: View {
    
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
            }
        }
    }
}

