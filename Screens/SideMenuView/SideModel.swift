import SwiftUI

struct SideModel: Identifiable{
    let id = UUID()
    let icon: String
    let title: String
    let color: Color
}

let menuItems = [
    SideModel(icon: "house.fill", title: "Home", color: .blue),
    SideModel(icon: "person.fill", title: "Profile", color: .purple),
    SideModel(icon: "bell.fill", title: "Notifications", color: .red),
    SideModel(icon: "gear", title: "Settings", color: .orange),
    SideModel(icon: "star.fill", title: "Favorites", color: .yellow),
    SideModel(icon: "envelope.fill", title: "Messages", color: .green)
]
