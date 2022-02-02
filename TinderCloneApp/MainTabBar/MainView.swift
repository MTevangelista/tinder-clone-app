import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var appState: AppStateManager
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .edgesIgnoringSafeArea(.vertical)
             
            VStack {
                HStack {
                    Spacer()
                    
                    TabBarButtonView(type: .fire)
                    
                    Spacer()
                
                    TabBarButtonView(type: .star)
                    
                    Spacer()

                    TabBarButtonView(type: .message)
                    
                    Spacer()
                    
                    TabBarButtonView(type: .profile)
                    
                    Spacer()
                }
                .frame(height: 100)
                .padding(.top, 30)
                
                showCorrectViewForState()
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.vertical)
        }
    }
    
    private func showCorrectViewForState() -> some View {
        switch appState.selectedTab {
        case .fire:
            let view = Text("fire")
            return AnyView(view)
        case .star:
            let view = Text("fire")
            return AnyView(view)
        case .message:
            let view = Text("fire")
            return AnyView(view)
        case .profile:
            let view = Text("fire")
            return AnyView(view)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(AppStateManager())
    }
}
