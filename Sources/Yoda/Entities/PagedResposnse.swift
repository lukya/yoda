import Foundation

public struct PagedResponse<EntityType: NamedEntityContract>: EntityContract {
    public let count: Int
    public let next: URL?
    public let previous: URL?
    public var results: [EntityType]
}
