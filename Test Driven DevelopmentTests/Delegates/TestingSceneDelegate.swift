@testable import Test_Driven_Development
import UIKit

class TestingSceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?
  static var connectionOptions: UIScene.ConnectionOptions?

  func scene(
    _ scene: UIScene,
    willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    Current = World.unitTest
    TestingSceneDelegate.connectionOptions = connectionOptions

    guard let windowScene = (scene as? UIWindowScene) else {
      return
    }
    window = UIWindow(windowScene: windowScene)
    window?.rootViewController = TestingRootVC()
    window?.makeKeyAndVisible()
  }
}
