import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            CarSettingsView()
            RoomView()
            ComponentsView()
            MealView()
            GuitarView()
        }
        .tabViewStyle(.page)
        .ignoresSafeArea()
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        
    }
}

#Preview {
    HomeView()
}
