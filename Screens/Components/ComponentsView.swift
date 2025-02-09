import SwiftUI

struct ComponentsView: View {
    var body: some View {
        VStack{
            GradientButton()
                .padding(.bottom, 10)
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


