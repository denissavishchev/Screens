import SwiftUI

struct AppDownloads: Identifiable{
    var id: UUID = .init()
    var date: Date
    var downloads: Double
    var month: String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        return dateFormatter.string(from: date)
    }
}

extension [AppDownloads] {
    func findDownloads(_ on: String) -> Double?{
        if let download = self.first (where: {
            $0.month == on
        }) {
            return download.downloads
        }
        return nil
    }
    
    func index(_ on: String) -> Int{
        if let index = self.firstIndex(where: {
            $0.month == on
        }) {
            return index
        }
        return 0
    }
}

var appDownloads: [AppDownloads] = [
    .init(date: .createDate(1, 1, 2024), downloads: 2500),
    .init(date: .createDate(1, 2, 2024), downloads: 3500),
    .init(date: .createDate(1, 3, 2024), downloads: 1500),
    .init(date: .createDate(1, 4, 2024), downloads: 9500),
    .init(date: .createDate(1, 5, 2024), downloads: 1950),
    .init(date: .createDate(1, 6, 2024), downloads: 5100),
]

extension Date{
    static func createDate(_ day: Int, _ month: Int, _ year: Int) -> Date{
        var components = DateComponents()
        components.day = day
        components.month = month
        components.year = year
        
        let calendar = Calendar.current
        let date = calendar.date(from: components) ?? .init()
        
        return date
    }
}
