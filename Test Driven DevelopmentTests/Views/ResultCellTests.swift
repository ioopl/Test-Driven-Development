@testable import Test_Driven_Development
import XCTest

class ResultCellTests: XCTestCase {
  func testResultCell() {
    let cell = ResultCell(style: .default, reuseIdentifier: "\(ResultCell.self)")
    let 🥥 = "🥥"
    cell.configure(result: 🥥)
    XCTAssertEqual(🥥, cell.resultLabel.text)
  }
}
