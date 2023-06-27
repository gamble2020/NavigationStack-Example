import SwiftUI

@main
struct Swift_NavigationStackExample: App {
    
    @Environment(\.managedObjectContext) private var viewContext
        
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                Page1()
            }
        }
    }
}
