import Foundation

struct Death: Decodable {
    let deathId: Int
    let character: String
    let image: URL
    let cause: String
    let details: String
    let responsible: [String]
    let connected: [String]
    let lastWords: String
    let episode: Int
    let production: String
}
