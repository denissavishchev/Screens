import Foundation

@MainActor
final class LegoViewModel: ObservableObject {
    
    @Published var minifigures: [Minifigures] = []

    init() {
        fetchMinifigures()
    }

    func fetchMinifigures() {
        let randomPage = Int.random(in: 1...100)
        Task {
            let minifiguresURL = "https://rebrickable.com/api/v3/lego/minifigs/?page_size=20&page=\(randomPage)&key=96555c2b40d04af4c555b21f5dbbb538"
            do {
                let figures = try await NetworkManager.shared.getLego(urlString: minifiguresURL)
                
                DispatchQueue.main.async {
                    self.minifigures = figures.results // Poprawka: używamy `results`, nie `minifigures`
                }
            } catch {
                DispatchQueue.main.async {
                    if let error = error as? NetworkError {
                        print("❌ Błąd: \(error.rawValue)")
                    } else {
                        print("❌ Nieznany błąd: \(error.localizedDescription)")
                    }
                }
            }
        }
    }
}
