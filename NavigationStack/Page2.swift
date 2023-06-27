import SwiftUI

struct Page2: View {

    var message: String

    var body: some View {
        VStack(spacing: 10) {
            Text(message)
            Spacer()
            Button(
                action: {
                    NavigationService.popView()
                })
            {
                Text("Pop to page 1")
            }
            Button(
                action: {
                    NavigationService.pushView(content: AnyView(Page3(message: "Hi there, I'm page 3")))
                })
            {
                Text("Push to page 3")
            }
        }
        .padding(20)
        .navigationTitle("Page 2")
    }
}
