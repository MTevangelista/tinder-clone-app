import SwiftUI

struct ChatViewHeader: View {
    @Environment(\.presentationMode) var presentationMode
    
    let name: String
    let imageURL: URL?
    let videoAction: () -> Void
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.top)
                .shadow(radius: 3)
            
            HStack {
                Button(action: dismissView) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color.textPrimary)
                        .font(.system(size: 28, weight: .semibold))
                }
                
                Spacer()
                
                VStack(spacing: 0) {
                    RoundedImage(url: imageURL)
                        .frame(height: 50)
                    
                    Text(name)
                        .foregroundColor(Color.textSecondary)
                        .font(.system(size: 14))
                }
                
                Spacer()
                
                Button(action: videoAction) {
                    Image(systemName: "video.fill")
                        .font(.system(size: 20, weight: .bold))
                }
            }
            .padding(.horizontal, 22)
            .padding(.vertical, 10)
        }
        .frame(height: 50)
    }
    
    private func dismissView() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct ChatViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person.example
        
        ChatViewHeader(name: person.name,
                       imageURL: person.imageURLS.first,
                       videoAction: {  })
    }
}
