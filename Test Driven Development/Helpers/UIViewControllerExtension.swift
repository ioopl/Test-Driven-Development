import UIKit

extension UIViewController {
  func fatalCastMessage(view: Any) -> String {
    return "Could not cast \(self).view to \(view)."
  }
}
