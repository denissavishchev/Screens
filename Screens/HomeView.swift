import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            GuitarView()
            Text("two")
            Text("three")
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        
    }
}

#Preview {
    HomeView()
}
