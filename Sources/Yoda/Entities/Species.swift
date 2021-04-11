import Foundation

public struct Species: NamedEntityContract {
    public let name: String
    public let classification: String
    public let designation: String
    public let averageHeight: String
    public let skinColors: String
    public let hairColors: String
    public let eyeColors: String
    public let averageLifespan: String
    public let homeworld: String
    public let language: String
    public let people: [URL]
    public let films: [URL]
    public let created: Date
    public let edited: Date
    public let url: URL
}
