import Foundation

public protocol NamedEntityContract: EntityContract {
    var name: String { get }
    var url: URL { get }
}
