import Foundation

final class NetworkManager{
    
    static let shared = NetworkManager()

    private let decoder = JSONDecoder()

    private init() {
        decoder.dateDecodingStrategy = .iso8601
    }
    
    func getLego(urlString: String) async throws -> Lego {
        guard let url = URL(string: urlString) else { throw NetworkError.invalidURL }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            return try decoder.decode(Lego.self, from: data)
        } catch {
            if let jsonString = String(data: data, encoding: .utf8) {
                print("📩 Otrzymany JSON: \(jsonString)")
            }
            throw NetworkError.invalidData
        }
    }
}

enum NetworkError: String, Error{
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "The data received from server is invalid"
}

