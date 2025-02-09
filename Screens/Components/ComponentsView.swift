import SwiftUI

struct ComponentsView: View {
    var body: some View {
        VStack{
            
            CapsuleButton()
                .padding(.bottom, 10)
            BouncingButton()
                .padding(.bottom, 10)
            CustomTabBar()
                .padding(.bottom, 10)
            TabBarPicker()
                .padding(.bottom, 10)
        }
    }
}



#Preview {
    ComponentsView()
}




