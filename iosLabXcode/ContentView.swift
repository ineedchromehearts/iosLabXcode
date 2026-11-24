
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            HStack(spacing: 0) {
                ForEach(Array("Hello World".enumerated()), id: \.offset) { index, letter in
                    Text(String(letter))
                        .foregroundStyle(index % 2 == 0 ? Color.pink : Color.green)
                }
            }
            .font(.system(size: 40, weight: .bold))
        }
    }
}

#Preview {
    ContentView()
}
