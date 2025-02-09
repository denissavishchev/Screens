import Foundation

struct Lego: Decodable {
    let results: [Minifigures] 
}

struct Minifigures: Decodable {
    let setNum: String
    let name: String
    let setImgUrl: String?

    enum CodingKeys: String, CodingKey {
        case setNum = "set_num"
        case name
        case setImgUrl = "set_img_url"
    }
}
