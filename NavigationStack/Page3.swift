import SwiftUI

struct Page3: View {

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
                Text("Pop to page 2")
            }
            Button(
                action: {
                    NavigationService.popToRoot()
                })
            {
                Text("Pop to root")
            }
        }
        .padding(20)
        .navigationTitle("Page 3")
    }
}
