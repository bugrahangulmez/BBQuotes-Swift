import Foundation

struct Quote: Decodable {
    let quoteId: Int
    let quote: String
    let character: String
    let production: String
    let episode: Int
}
