import SwiftUI

struct ChalengesModel: Identifiable{
    var id = UUID().uuidString
    var name: String
    var image: String
    var description: String
}
