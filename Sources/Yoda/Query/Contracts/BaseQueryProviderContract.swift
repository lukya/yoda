import Foundation

public protocol BaseQueryProviderContract {
    associatedtype Entity: EntityContract
    static var baseQuery: Query<Entity>? { get }
}
