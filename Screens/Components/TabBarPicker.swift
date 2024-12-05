import SwiftUI

struct TabPicker: Identifiable{
    var id = UUID()
    var title: String
    var tab: TabItem
}

let pickerItems = [
    TabPicker(title: "All", tab: .all),
    TabPicker(title: "In progress", tab: .inProgress),
    TabPicker(title: "Completed", tab: .completed)
]

enum TabItem: String {
    case all
    case inProgress
    case completed
}

struct TabBarPicker: View {
    
    @State var selectedTab: TabItem = .all
    @Namespace var animationNamespace
    @State private var textWidth: CGFloat = 0
    
    var body: some View {
        HStack{
            ForEach(pickerItems){item in
                Text(item.title)
                    .bold()
                    .frame(width: 110)
                    .background(
                        Group{
                            if selectedTab == item.tab {
                                Capsule()
                                    .frame(width: 120, height: 50)
                                    .foregroundStyle(Color(.systemGray4))
                                    .matchedGeometryEffect(id: "capsule", in: animationNamespace)
                            }
                        }
                    )
                    .onTapGesture{
                        withAnimation(.spring(response: 0.5)){
                            selectedTab = item.tab
                        }
                    }
            }
        }
        .frame(height: 65)
        .padding(.horizontal, 13)
        .background(Color(.systemGray6), in: Capsule())
    }
}

#Preview {
    TabBarPicker()
}
