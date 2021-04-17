import Foundation

public protocol BaseQueryProviderContract {
    associatedtype Entity: Decodable
    static var baseQuery: Query<Entity>? { get }
}
