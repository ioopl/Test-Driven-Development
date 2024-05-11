@testable import Test_Driven_Development
import XCTest

final class DeviceStubTests: XCTestCase {
  func testUserFacingMessage() {
    let testDevice = "iPod Nano"
    let device = DeviceStub(name: testDevice)
    XCTAssertEqual("Test_Driven_Development is running on \(testDevice).", device.userFacingMessage)
  }
}
