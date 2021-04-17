import Foundation

public struct Person: NamedEntityContract {
    public let name: String
    public let height: String
    public let mass: String
    public let hairColor: String
    public let skinColor: String
    public let eyeColor: String
    public let birthYear: String
    public let gender: String
    public let homeworld: String
    public let films: [URL]
    public let species: [URL]
    public let vehicles: [URL]
    public let starships: [URL]
    public let created: Date
    public let edited: Date
    public let url: URL
}
