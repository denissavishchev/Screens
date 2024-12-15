import SwiftUI

struct CardModel: Identifiable{
    var id = UUID().uuidString
    var cardColor: Color
    var offset: CGFloat = 0
    var title: String
}
