import Foundation

public typealias YodaResourceCompletion = (Result<EntityContract, DoOrDoNot>) -> Void

public struct Yoda {
    private static let session = URLSession(configuration: .default)
    private static var task: URLSessionDataTask?
    private static var completionHandler: YodaResourceCompletion?

    public static func get<Entity: EntityContract>(query: Query<Entity>,
                                       completion: @escaping YodaResourceCompletion) {

        Yoda.task?.cancel()
        Yoda.completionHandler = completion

        Yoda.task = Yoda.session.dataTask(with: query.url, completionHandler: { data, response, sessionError in
            if let sessionError = sessionError {
                completion(.failure(.problemWeHave(underlyingError: sessionError)))
            } else if (response as? HTTPURLResponse)?.statusCode == 200,
                      let data = data {
                do {
                    let entity = try JSONDecoder().decode(query.entityType, from: data)
                    completion(.success(entity))
                } catch {
                    completion(.failure(.parseResponseWeCannot(parsingError: error)))
                }
            } else {
                completion(.failure(.problemWeHave(underlyingError: nil)))
            }
        })
    }
}
