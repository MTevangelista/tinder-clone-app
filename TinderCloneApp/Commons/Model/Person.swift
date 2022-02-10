import Foundation

struct Person {
    var name: String
    var imageURLS: [URL]
}

extension Person {
    static let example = Person(name: "Fulano", imageURLS: [URL(string: "https://picsum.photos/400/300")!])
}
