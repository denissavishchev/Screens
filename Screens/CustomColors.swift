import SwiftUI

enum CustomColors: String {
    case blueGray
    case icyGray
    case icyWhite
    case vermilion


    var color: Color {
        switch self {
        case .blueGray:
            return Color("blueGray", bundle: .main)
        case .icyGray:
            return Color("icyGray", bundle: .main)
        case .icyWhite:
            return Color("icyWhite", bundle: .main)
        case .vermilion:
            return Color("vermilion", bundle: .main)
        }
    }
}
