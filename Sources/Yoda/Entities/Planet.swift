import Foundation

public struct Planet: NamedEntityContract {
    public let name: String
    public let rotationPeriod: String
    public let orbitalPeriod: String
    public let diameter: String
    public let climate: String
    public let gravity: String
    public let terrain: String
    public let surfaceWater: String
    public let population: String
    public let residents: [URL]
    public let films: [URL]
    public let created: Date
    public let edited: Date
    public let url: URL
}
