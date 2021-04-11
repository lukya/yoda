typealias YodaResourceCompletion = (Result<EntityContract, NoTry>) -> Void

struct Yoda {
    static func get<Entity: Decodable>(query: Query<Entity>,
                    completion: YodaResourceCompletion) {
    }
}
