import SwiftUI

struct TabBar: Identifiable{
    var id = UUID()
    var iconName: String
    var tab: TabIcon
}

let tabItems = [
    TabBar(iconName: "house", tab: .Home),
    TabBar(iconName: "heart", tab: .favorite),
    TabBar(iconName: "bell", tab: .Notification),
    TabBar(iconName: "person", tab: .profile),
]

enum TabIcon: String {
    case Home
    case favorite
    case Notification
    case profile
}

struct CustomTabBar: View {
    
    @State var selectedTab: TabIcon = .favorite
    @Namespace var animationNamespace
    
    var body: some View {
        HStack{
            ForEach(tabItems){item in
                Spacer()
                Image(systemName: item.iconName)
                    .font(.title2)
                    .symbolVariant(selectedTab == item.tab ? .fill : .none)
                    .contentTransition(.interpolate)
                    .foregroundStyle(selectedTab == item.tab ? Color.primary : .gray)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)){
                            selectedTab = item.tab
                        }
                    }
                    .background{
                        Group{
                            if selectedTab == item.tab{
                                Circle()
                                    .frame(width: 70, height: 70)
                                    .foregroundStyle(Color(.systemGray4))
                                    .matchedGeometryEffect(id: "circle", in: animationNamespace)
                            }
                        }
                    }
                Spacer()
            }
        }
        .frame(height: 90)
        .background(Color(.systemGray6), in: .capsule)
        .padding(.horizontal, 10)
    }
}

#Preview {
    CustomTabBar()
}
