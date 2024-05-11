@testable import Test_Driven_Development
import XCTest

final class DeviceRealTests: XCTestCase {
  func testUserFacingMessage() {
    let device = DeviceReal()
    let expectedPrefix = "Test_Driven_Development is running on"
    let actualPrefix = String(device.userFacingMessage.prefix(expectedPrefix.count))
    XCTAssertEqual(expectedPrefix, actualPrefix)
  }
}
