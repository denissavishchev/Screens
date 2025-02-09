import SwiftUI

struct ComponentsView: View {
    var body: some View {
        VStack{
            
            BouncingButton()
                .padding(.bottom, 10)
            CustomTabBar()
                .padding(.bottom, 10)
            TabBarPicker()
                .padding(.bottom, 10)
            TaskProgress()
                .padding(.bottom, 10)
        }
    }
}



#Preview {
    ComponentsView()
}


