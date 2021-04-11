import Foundation

public let filmsSubpath: String = "films"
public let peopleSubpath: String = "people"
public let planetsSubpath: String = "planets"
public let speciesSubpath: String = "species"
public let starshipSubpath: String = "starships"
public let vehiclesSubpath: String = "vehicles"

extension Film: SubpathProviderContract {
    public static var subpath: String { filmsSubpath }
}

extension Person: SubpathProviderContract {
    public static var subpath: String { peopleSubpath }
}

extension Planet: SubpathProviderContract {
    public static var subpath: String { planetsSubpath }
}

extension Species: SubpathProviderContract {
    public static var subpath: String { speciesSubpath }
}

extension Starship: SubpathProviderContract {
    public static var subpath: String { starshipSubpath }
}

extension Vehicle: SubpathProviderContract {
    public static var subpath: String { vehiclesSubpath }
}
