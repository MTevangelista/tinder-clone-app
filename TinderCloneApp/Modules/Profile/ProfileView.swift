import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 0) {
            ProfileUserImageView()
            
            Spacer().frame(height: 18)
            
            ProfileUserInfoView()
            
            Spacer().frame(height: 22)
            
            ProfileButtonsView()
            
            Spacer().frame(height: 14)
            
            ProfileTipView()
            
            ProfileSwipePromo {
                
            }
            .background(Color.gray.opacity(0.15))
            .padding(.top, 18)
        }
        .foregroundColor(.black.opacity(0.75))
    }
    
    private func handleAction() {}
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
