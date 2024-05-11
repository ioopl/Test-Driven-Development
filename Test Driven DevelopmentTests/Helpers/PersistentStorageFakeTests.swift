@testable import Test_Driven_Development
import XCTest

final class PersistentStorageFakeTests: XCTestCase {
  func testLoadAndPersistStringArray() {
    let persistentStorage = PersistentStorageFake()
    XCTAssert(persistentStorage.loadStringArray().isEmpty)
    let arrayToPersist = ["🐋", "🍕", "🥥"]
    persistentStorage.persistStringArray(arrayToPersist)
    XCTAssertEqual(arrayToPersist, persistentStorage.loadStringArray())
  }
}
