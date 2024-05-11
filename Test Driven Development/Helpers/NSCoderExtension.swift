import Foundation

extension NSCoder {
  static func fatalErrorNotImplemented() -> Never {
    fatalError("init(coder:) has not been implemented.")
  }
}
