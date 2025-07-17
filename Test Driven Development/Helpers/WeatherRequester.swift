import CoreLocation

// For Relevant parts of sample response from OpenWeather, see 

enum WeatherRequester {
  private static let romeLatitude = 41.893333
  private static let romeLongitude = 12.482778
    static let urlString = "https://api.openweathermap.org/data/3.0/onecall?lat=\(romeLatitude)&lon=\(romeLongitude)&appid=\(Config.openWeatherKey)"

    static func getCurrentConditionsInRome() async -> String? {
      let conditionsLabelText = "Currently in Rome: "
      do {
        guard Config.openWeatherKey != "" else {
          return conditionsLabelText + "24° C, clear sky"
        }

        guard let url = URL(string: urlString) else {
          fatalError(URL.couldNotInit(urlString: urlString))
        }

        let (data, _) = try await Current.session.data(from: url)
        let decoder = JSONDecoder()
        //decoder.keyDecodingStrategy = .convertFromSnakeCase
          
          let response = try decoder.decode(WeatherResponse.self, from: data)

          let tempAndWeathers = response.weather

          guard tempAndWeathers.count <= 1 else {
          Current.analyticsService.sendAnalyticsEvent(.weatherRequestFailed)
          return nil
        }

        let tempInKelvin = response.main.temp
        let kelvinMeasurement = Measurement(value: tempInKelvin, unit: UnitTemperature.kelvin)
        let celsius = Int(kelvinMeasurement.converted(to: .celsius).value.rounded())
          let description = response.weather.first?.description ?? ""
          
        Current.analyticsService.sendAnalyticsEvent(.weatherRequestSucceeded)
        return "\(conditionsLabelText)\(celsius)° C, \(description)"
      } catch {
          print(error)
        Current.analyticsService.sendAnalyticsEvent(.weatherRequestFailed)
        return nil
      }
    }
}
