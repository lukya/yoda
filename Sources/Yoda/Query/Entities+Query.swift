extension Root {
    var filmsQuery: Query<PagedResponse<Film>> {
        return Query<PagedResponse<Film>>(url: self.films)
    }

    var peopleQuery: Query<PagedResponse<Person>> {
        return Query<PagedResponse<Person>>(url: self.people)
    }

    var planetsQuery: Query<PagedResponse<Planet>> {
        return Query<PagedResponse<Planet>>(url: self.planets)
    }

    var speciesQuery: Query<PagedResponse<Species>> {
        return Query<PagedResponse<Species>>(url: self.species)
    }

    var starshipsQuery: Query<PagedResponse<Starship>> {
        return Query<PagedResponse<Starship>>(url: self.starships)
    }

    var vehiclesQuery: Query<PagedResponse<Vehicle>> {
        return Query<PagedResponse<Vehicle>>(url: self.vehicles)
    }
}


public extension PagedResponse {
    var nextPageQuery: Query<PagedResponse<EntityType>>? {
        guard let url = self.next else { return nil }
        return Query<PagedResponse<EntityType>>(url: url)
    }

    var previousPageQuery: Query<PagedResponse<EntityType>>? {
        guard let url = self.previous else { return nil }
        return Query<PagedResponse<EntityType>>(url: url)
    }
}
