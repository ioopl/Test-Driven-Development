// Main Weather data response - see mock response file currentConditions.json
struct WeatherResponse: Decodable {
    let coord: Coordinates
    let weather: [Weather]
    let base: String
    let main: Main
    let visibility: Int
    let wind: Wind
    let clouds: Clouds
    let dt: Int
    let sys: System
    let timezone, id: Int
    let name: String
    let cod: Int
}

// Coordinate data
struct Coordinates: Decodable {
    let lon, lat: Double
}

// Main weather metrics
struct Main: Decodable {
    let temp, feelsLike: Double
    let tempMin, tempMax: Double
    let pressure, humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure, humidity
    }
}

// Wind details
struct Wind: Decodable {
    let speed: Double
    let deg: Int
}

// Clouds data
struct Clouds: Decodable {
    let all: Int
}

// Additional system data
struct System: Decodable {
    let type, id: Int
    let country: String
    let sunrise, sunset: Int
}

