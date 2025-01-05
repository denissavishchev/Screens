import SwiftUI

struct ChartsView: View {
    var body: some View {
        NavigationStack{
            Home()
                .navigationTitle("Interactive Charts")
        }
    }
}

#Preview {
    ChartsView()
}

