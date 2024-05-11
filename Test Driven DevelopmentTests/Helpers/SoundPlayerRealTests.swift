@testable import Test_Driven_Development
import XCTest

final class SoundPlayerRealTests: XCTestCase {
  func testPlay() {
    let soundPlayer = SoundPlayerReal()
    soundPlayer.play(.happy)
    soundPlayer.play(.sad)
  }
}
