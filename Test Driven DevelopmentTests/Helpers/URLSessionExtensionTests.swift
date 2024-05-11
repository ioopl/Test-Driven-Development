@testable import Test_Driven_Development
import XCTest

class URLSessionExtensionTests: XCTestCase {
  func testStubData() {
    let session = URLSession.stub
    XCTAssert(session.configuration.protocolClasses?[0] is URLProtocolStub.Type)
    let expectedTestURLCount = 1
    XCTAssertEqual(expectedTestURLCount, URLSession.urlDataDict.count)
  }
}
