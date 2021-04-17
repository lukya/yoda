public protocol QueryProviderContract where Self: EntityContract {
    var query: Query<Self> { get }
}
