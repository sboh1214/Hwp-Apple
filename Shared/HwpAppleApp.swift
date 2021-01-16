import SwiftUI

@main
struct HwpAppleApp: App {
    
    var body: some Scene {
        DocumentGroup(newDocument: HwpAppleDocument()) { file in
            MainView(document: file.$document)
        }
        .commands {
            ToolbarCommands()
            SidebarCommands()
            CommandGroup(replacing: CommandGroupPlacement.appInfo) {
                Button("한글다운에 관하여...") {
                    
                }
            }
        }
        WindowGroup("About") {
            AboutView()
        }
    }
}
