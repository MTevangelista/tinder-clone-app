import SwiftUI

struct ProfileUserInfoView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Matheus, 25")
                .foregroundColor(.textTitle)
                .font(.system(size: 26, weight: .medium))
            
            Spacer().frame(height: 8)
            
            Text("Software Engineer")
        }
    }
}

struct ProfileUserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUserInfoView()
    }
}
