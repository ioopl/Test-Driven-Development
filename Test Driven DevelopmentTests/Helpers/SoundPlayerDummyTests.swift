@testable import Test_Driven_Development
import XCTest

final class SoundPlayerDummyTests: XCTestCase {
  func testPlay() {
    let soundPlayer = SoundPlayerDummy()
    soundPlayer.play(.happy)
    soundPlayer.play(.sad)
  }
}
