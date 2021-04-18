import Foundation

public struct Query<Entity> where Entity: EntityContract {
    public let entityType = Entity.self
    public let url: URL
}
