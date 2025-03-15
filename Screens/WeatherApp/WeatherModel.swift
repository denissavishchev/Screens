import SwiftUI

struct WeatherModel: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let image: String
    let temperature: String
}

var weathers: [WeatherModel] = [
    .init(name: "TUE", image: "cloud.sun.fill", temperature: "74"),
    .init(name: "WED", image: "sun.max.fill", temperature: "70"),
    .init(name: "THU", image: "wind", temperature: "66"),
    .init(name: "TUE", image: "cloud.sun.rain.fill", temperature: "60"),
    .init(name: "TUE", image: "moon.stars.fill", temperature: "55")
]
