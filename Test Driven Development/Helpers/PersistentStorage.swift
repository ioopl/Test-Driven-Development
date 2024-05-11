protocol PersistentStorage {
  func loadStringArray() -> [String]
  func persistStringArray(_ array: [String])
}
