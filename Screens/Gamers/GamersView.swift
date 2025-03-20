import SwiftUI

struct GamersView: View {
    var body: some View {
        VStack {
            PrinceView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    GamersView()
}
