struct DeviceStub: Device {
  let name: String

  var userFacingMessage: String {
    messageWithoutDevice.replacingOccurrences(of: placeholder, with: name)
  }
}
