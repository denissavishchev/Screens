import SwiftUI

let tabItems: [String] = [
    "house",
    "chart.bar.xaxis",
    "person.fill",
    "gear",
]


struct CustomTabBar: View {
    
    @Binding var selectedTab: String
    
    var body: some View {
        HStack(spacing: 10){
            ForEach(tabItems, id: \.self){item in
                Spacer()
                Image(systemName: item)
                    .font(.title2)
                    .symbolVariant(selectedTab == item ? .fill : .none)
                    .contentTransition(.interpolate)
                    .foregroundStyle(selectedTab == item ? Color.primary : .white)
                    .onTapGesture {
                        withAnimation(.spring(response: 0.7, dampingFraction: 0.7)){
                            selectedTab = item
                        }
                    }
                    .background{
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundStyle(selectedTab == item ? Color.ampGreen : Color.black.opacity(0.4))
                    }
                Spacer()
            }
        }
        .frame(height: 60)
        .background(Color(.bikeGray), in: .capsule)
        .padding(.horizontal, 80)
    }
}
