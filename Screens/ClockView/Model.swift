import SwiftUI

struct Item: Identifiable{
    let id = UUID()
    let color: Color
    let image: String
    let catalogId: String
    let price: String
    let type: String
}

struct Data{
    static var items = [Item(color: .teal, image: "Apocalipse", catalogId: "3452", price: "235", type: "ETH"),
                        Item(color: .pink, image: "Fire", catalogId: "1297", price: "235", type: "ETH"),
                        Item(color: .indigo, image: "Future", catalogId: "6534", price: "458", type: "BTC"),
                        Item(color: .orange, image: "Heart", catalogId: "7641", price: "321", type: "ETH"),
                        Item(color: .purple, image: "Psycho", catalogId: "9271", price: "237", type: "BTC"),
                        Item(color: .yellow, image: "Space", catalogId: "4753", price: "784", type: "ETH"),
                        Item(color: .green, image: "Steam", catalogId: "1092", price: "455", type: "ETH"),
                        Item(color: .blue, image: "Water", catalogId: "8532", price: "653", type: "BTC"),]
}

