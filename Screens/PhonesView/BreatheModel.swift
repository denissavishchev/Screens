import SwiftUI

struct BreatheModel: Identifiable, Hashable{
    var id: String = UUID().uuidString
    var title: String
    var color: Color
}

var breatheTypes: [BreatheModel] = [
    .init(title: "Anger", color: .red),
    .init(title: "Irritation", color: .brown),
    .init(title: "Sadness", color: .purple),
]
