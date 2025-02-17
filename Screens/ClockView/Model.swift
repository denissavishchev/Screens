import SwiftUI

struct Item: Identifiable{
    let id = UUID()
    let color: Color
    let image: String
}

struct Data{
    static var items = [Item(color: .teal, image: "Apocalipse"),
                        Item(color: .pink, image: "Fire"),
                        Item(color: .indigo, image: "Future"),
                        Item(color: .orange, image: "Heart"),
                        Item(color: .purple, image: "Psycho"),
                        Item(color: .yellow, image: "Space"),
                        Item(color: .green, image: "Steam"),
                        Item(color: .blue, image: "Water"),]
}

