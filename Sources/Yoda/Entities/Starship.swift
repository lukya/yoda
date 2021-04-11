import Foundation

public struct Starship: NamedEntityContract {
    public let name: String
    public let model: String
    public let manufacturer: String
    public let costInCredits: String
    public let length: String
    public let maxAtmospheringSpeed: String
    public let crew: String
    public let passengers: String
    public let cargoCapacity: String
    public let consumables: String
    public let hyperdriveRating: String
    public let MGLT: String
    public let starshipClass: String
    public let pilots: [URL]
    public let films: [URL]
    public let created: Date
    public let edited: Date
    public let url: URL
}
