import SwiftUI

struct GamersView: View {
    var body: some View {
        VStack {
            PrinceView()
            Spacer()
                .frame(maxHeight: 50)
            RobotView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    GamersView()
}

