import Foundation

public let baseUrl = URL(string: "https://swapi.dev/api/")

extension Root: BaseQueryProviderContract {
    public static var baseQuery: Query<Root>? {
        guard let entityBaseUrl = baseUrl else {
            return nil
        }

        return Query<Root>(url: entityBaseUrl)
    }
}

extension BaseQueryProviderContract where Self: SubpathProviderContract, Self: NamedEntityContract {
    public static var baseQuery: Query<PagedResponse<Self>>? {
        guard let entityBaseUrl = baseUrl?
            .appendingPathComponent(Self.subpath) else {
            return nil
        }

        return Query<PagedResponse<Self>>(url: entityBaseUrl)
    }
}

extension Film: BaseQueryProviderContract {}
extension Person: BaseQueryProviderContract {}
extension Planet: BaseQueryProviderContract {}
extension Species: BaseQueryProviderContract {}
extension Starship: BaseQueryProviderContract {}
extension Vehicle: BaseQueryProviderContract {}
