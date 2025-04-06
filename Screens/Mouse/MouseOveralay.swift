
import SwiftUI

struct MouseOverlay: View {
    var body: some View {
        VStack{
            Text("Mouse")
                .font(.system(size: 90, weight: .bold, design: .monospaced))
                .foregroundStyle(LinearGradient(colors: [.gray, .gray.opacity(0.5)], startPoint: .leading, endPoint: .trailing))
            
            Spacer()
        }
    }
}
