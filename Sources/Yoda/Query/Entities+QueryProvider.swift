extension QueryProviderContract where Self: NamedEntityContract {
    public var query: Query<Self> {
        return Query<Self>(url: self.url)
    }
}

extension Film: QueryProviderContract {}
extension Person: QueryProviderContract {}
extension Planet: QueryProviderContract {}
extension Species: QueryProviderContract {}
extension Starship: QueryProviderContract {}
extension Vehicle: QueryProviderContract {}
