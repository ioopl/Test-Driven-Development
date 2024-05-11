protocol Device {
  var userFacingMessage: String { get }
}

extension Device {
  var placeholder: String {
    "PLACEHOLDER"
  }

  var messageWithoutDevice: String {
    "Test_Driven_Development is running on \(placeholder)."
  }
}
