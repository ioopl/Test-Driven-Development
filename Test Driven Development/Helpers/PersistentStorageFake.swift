class PersistentStorageFake: PersistentStorage {
  private var persistedArray: [String] = []

  func loadStringArray() -> [String] {
    persistedArray
  }

  func persistStringArray(_ array: [String]) {
    persistedArray = array
  }
}
