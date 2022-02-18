import SwiftUI

struct ChatView: View {
    private var person: Person
    
    @ObservedObject var viewModel: ChatViewModel
    
    init(person: Person) {
        self.person = person
        self.viewModel = ChatViewModel(person: person)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(viewModel.messages.indices, id: \.self) { index in
                    let msg = viewModel.messages[index]
                    MessageView(message: msg)
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(person: Person.example)
    }
}
