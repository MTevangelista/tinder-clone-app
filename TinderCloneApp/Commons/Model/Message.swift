struct Message {
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}

extension Message {
    static let exampleSent = Message(content: "Hello there")
    static let exampleReceived = Message(content: "Hello there", person: Person.example)
}
