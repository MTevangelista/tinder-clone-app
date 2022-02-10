import SwiftUI

struct ProfileTipView: View {
    var body: some View {
        HStack {
            Text("Photo Tip: Make waves with a beach photo and get more likes")
                .multilineTextAlignment(.leading)
                .lineLimit(3)
                .foregroundColor(.white)
                .font(.system(size: 14))
            
            Button(action: {}) {
                Image(systemName: "plus")
                    .font(.system(size: 12, weight: .heavy))
                    .foregroundColor(.pink)
                    .padding(6)
            }
            .background(Color.white)
            .clipShape(Circle())
        }
        .padding()
        .background(Color.pink)
        .cornerRadius(12)
    }
}

struct ProfileTipView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTipView()
    }
}
