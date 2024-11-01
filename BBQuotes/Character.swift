import Foundation

struct Character: Decodable {
    let charactedId: Int
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let fullName: String
    let aliases: [String]
    let status: String
    let portrayedBy: String
    let productions: [String]
    var death: Death?
}
