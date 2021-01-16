import SwiftUI

struct MainView: View {
    @Binding var document: HwpAppleDocument
    
    var body: some View {
        NavigationView {
            Group {
                SidebarView()
                ContentView()
            }
        }.toolbar {
            #if os(macOS)
            ToolbarItem(placement: .navigation){
                Button(action: toggleSidebar, label: {
                        Image(systemName: "sidebar.left") })
            }
            #endif
            ToolbarItem(placement: .automatic) {
                Button("New") {}
            }
        }
    }
}

#if os(macOS)
func toggleSidebar() {
    NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
}
#endif

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView(document: .constant(HwpAppleDocument()))
        }
    }
}
