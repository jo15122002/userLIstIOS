// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let albums = try? newJSONDecoder().decode(Albums.self, from: jsonData)

import Foundation

// MARK: - Album
struct Album: Codable, Identifiable {
    var userID, id: Int
    var title: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title
    }
    
    static func defaultAlbum() -> Album{
        return Album(userID: 8, id: 2, title: "Mes vacances en Russie")
    }
}

typealias Albums = [Album]
