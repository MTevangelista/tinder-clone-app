import SwiftUI

struct MessageView: View {
    var message: Message
    
    var body: some View {
        HStack {
            if message.fromCurrentUser {
                Spacer()
            }
            
            Text(message.content)
                .padding(10)
                .foregroundColor(.white)
                .background(messageContentBackgroundColor)
                .cornerRadius(10)
            
            if !message.fromCurrentUser {
                Spacer()
            }

        }
        .padding()
    }
    
    var messageContentBackgroundColor: some View {
        message.fromCurrentUser ? Color.blue : Color.gray
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: Message.exampleSent)
        MessageView(message: Message.exampleReceived)
    }
}
