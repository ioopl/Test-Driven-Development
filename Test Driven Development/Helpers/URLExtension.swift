import Foundation

extension URL {
  static func couldNotInit(urlString: String) -> String {
    "Could not initialize URL from \(urlString)."
  }
}
