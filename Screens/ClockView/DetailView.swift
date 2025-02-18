import SwiftUI

struct DetailView: View {
    
    let item: Item

    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 320)
            Text("Detail Screen")
            BackButtonView()
        }
        .navigationBarHidden(true)
    }
}
