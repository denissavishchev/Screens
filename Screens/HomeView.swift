import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            GamersView()
            Foody()
            StatusView()
            WeatherApp()
            PhonesView()
            WorkoutView()
            ThemeSwitcher()
            SideMenuView()
            ClockView()
            DroneView()
            RetroView()
            LoginView()
            BikeView()
            JellyView()
            CinemaView()
            LampView()
            ChartsView()
            GoodMorningView()
            WatchView()
            AmpView()
            SushiView()
            CarouselView()
            SmileView()
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
