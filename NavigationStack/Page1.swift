import SwiftUI

struct Page1: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Hi there, I'm page 1")
            Spacer()
            Button(
                action: {
                    NavigationService.pushView(content: AnyView(Page2(message: "Hi there, I'm page 2")))
                })
            {
                Text("Push to page 2")
            }
        }
        .padding(20)
        .navigationTitle("Page 1")
    }
}
