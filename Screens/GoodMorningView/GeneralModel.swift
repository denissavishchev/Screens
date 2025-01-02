import SwiftUI

struct GeneralModel: Identifiable{
    var id = UUID().uuidString
    var icon: String
    var value: Double
}

class GeneralViewModel: ObservableObject {
    
    @Published var generals = [
        GeneralModel(icon: "fanblades.fill", value: 0.5),
        GeneralModel(icon: "fossil.shell.fill", value: 0.3),
        GeneralModel(icon: "lightbulb.fill", value: 0.8)
    ]
    
}

