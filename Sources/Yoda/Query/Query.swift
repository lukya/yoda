import Foundation

public struct Query<Entity> where Entity: Decodable {
    let entityType = Entity.Type.self
    let url: URL
}
