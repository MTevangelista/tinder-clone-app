import SwiftUI

struct ProfileUserImageView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            RoundedImage(url: URL(string: "https://picsum.photos/400"))
                .frame(height: 175)
            
            Button(action: {}) {
                Image(systemName: "pencil")
                    .font(.system(size: 18, weight: .heavy))
                    .foregroundColor(Color.gray.opacity(0.5))
                    .frame(width: 32, height: 32)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 6)
            }
            .padding(.vertical, 10)
            .offset(x: -10)
        }
    }
}

struct ProfileUserImageView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUserImageView()
    }
}
