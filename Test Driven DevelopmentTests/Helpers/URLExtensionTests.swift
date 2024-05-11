@testable import Test_Driven_Development
import XCTest

class URLExtensionTests: XCTestCase {
  func testCouldNotInit() {
    let 🙀 = "🙀"
    XCTAssertEqual("Could not initialize URL from \(🙀).", URL.couldNotInit(urlString: 🙀))
  }
}
