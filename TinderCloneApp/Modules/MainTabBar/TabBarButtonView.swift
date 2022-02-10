import SwiftUI

struct TabBarButtonView: View {
    
    var type: TabBarButtonType
    
    @EnvironmentObject var appState: AppStateManager
    
    var body: some View {
        Button(action: action) {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .if(appState.selectedTab == type, transform: {
                    $0.foregroundColor(type == .star ? Color.yellow : Color.red)
                })
                .foregroundColor(Color.gray.opacity(0.5))
        }
        .frame(height: 32)
    }
    
    private func action() {
        appState.selectedTab = type
    }
}

struct TabBarButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButtonView(type: .star)
            .environmentObject(AppStateManager())
    }
}
