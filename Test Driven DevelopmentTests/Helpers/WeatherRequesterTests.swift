@testable import Test_Driven_Development
import XCTest

class WeatherRequesterTests: XCTestCase {
  func testGetCurrentConditionsInRome() async {
    guard Config.openWeatherKey != "" else {
      XCTFail("This unit test requires an Open Weather API key.")
      return
    }

    let currentConditions = await WeatherRequester.getCurrentConditionsInRome()
    XCTAssertEqual("Currently in Rome: 24° C, clear sky", currentConditions)
  }
}
