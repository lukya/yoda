import Foundation

public struct Film: NamedEntityContract {
    public let title: String
    public let episodeId: Int
    public let openingCrawl: String
    public let director: String
    public let producer: String
    public let releaseDate: String
    public let characters: [URL]
    public let planets: [URL]
    public let starships: [URL]
    public let vehicles: [URL]
    public let species: [URL]
    public let created: Date
    public let edited: Date
    public let url: URL

    public var name: String { return self.title }
}
