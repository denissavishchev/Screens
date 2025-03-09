import SwiftUI

struct TabsView: View {
    
    @State private var selectedTab: String = "house"
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
            ZStack {
                VStack{
                    TabView(selection: $selectedTab) {
                        MainWorkoutView()
                            .tag("house")
                        StatisticsView()
                            .tag("chart.bar.xaxis")
                        ProfileView()
                            .tag("person.fill")
                        SettingsView()
                            .tag("gear")
                    }
                }
                
                VStack {
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
    }
}

#Preview {
    TabsView()
}
