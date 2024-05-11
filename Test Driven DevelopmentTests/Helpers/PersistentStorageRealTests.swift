@testable import Test_Driven_Development
import XCTest

final class PersistentStorageRealTests: XCTestCase {
  private var savedArray: [String] = []
  private let persistentStorage = PersistentStorageReal()

  override func setUp() {
    savedArray = persistentStorage.loadStringArray()
  }

  func testLoadAndPersistStringArray() {
    persistentStorage.persistStringArray([])
    XCTAssert(persistentStorage.loadStringArray().isEmpty)
    let arrayToPersist = ["🎉", "🐋", "🍕", "🥥", "🌴"]
    persistentStorage.persistStringArray(arrayToPersist)
    XCTAssertEqual(arrayToPersist, persistentStorage.loadStringArray())
  }

  override func tearDown() {
    persistentStorage.persistStringArray(savedArray)
  }
}
