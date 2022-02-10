import SwiftUI

struct ContentView: View {
    @ObservedObject var appStateManager: AppStateManager = AppStateManager()
    
    var body: some View {
        MainView()
            .environmentObject(appStateManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
