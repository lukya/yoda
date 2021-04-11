import Foundation

public struct Vehicle: NamedEntityContract {
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
    public let vehicleClass: String
    public let pilots: [URL]
    public let films: [URL]
    public let created: Date
    public let edited: Date
    public let url: URL
}
