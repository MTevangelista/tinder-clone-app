import Foundation

final class ChatViewModel: ObservableObject {
    private var person: Person
    
    @Published var messages: [Message] = []
    
    init(person: Person) {
        self.person = person
        loadMessages()
    }
    
    private func loadMessages() {
        messages = [Message.exampleSent, Message.exampleReceived]
    }
}
