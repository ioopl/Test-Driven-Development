// Weather condition details
struct Weather: Decodable {
    let id: Int
    let main, description, icon: String
}
