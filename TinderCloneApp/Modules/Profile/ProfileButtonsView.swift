import SwiftUI

struct ProfileButtonsView: View {
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            
            Button(action: {}) {
                VStack {
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(Color.gray.opacity(0.5))
                        .font(.system(size: 30))
                        .padding(10)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                    
                    Text("SETTINGS")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                }
                
            }
            
            Spacer()
            
            Button(action: {}) {
                VStack {
                    Image(systemName: "camera.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 38))
                        .padding(22)
                        .background(Color.red)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                    
                    Text("ADD MEDIA")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                }
                
            }
            
            Spacer()
            
            Button(action: {}) {
                VStack {
                    Image(systemName: "shield.fill")
                        .foregroundColor(Color.gray.opacity(0.5))
                        .font(.system(size: 30))
                        .padding(10)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 6)
                    
                    Text("SAFETY")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.textSecondary)
                }
            }
            
            Spacer()
        }
    }
}


struct ProfileButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButtonsView()
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}
