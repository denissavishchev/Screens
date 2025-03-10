import SwiftUI

struct ChalengesModel: Identifiable{
    var id = UUID().uuidString
    var name: String
    var count: String
    var image: String
    var description: String
    var isDone: Bool
    
}
