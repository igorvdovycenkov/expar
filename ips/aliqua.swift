import SwiftUI

struct ContentView: View {
    @State private var phase: Int = 0

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .opacity(phase == 0 ? 1 : 0.5)
                .scaleEffect(phase == 1 ? 1.5 : 1)
                .animation(.easeInOut(duration: 1), value: phase)

            Button(action: {
                // Cycle through phases
                withAnimation {
                    phase = (phase + 1) % 2
                }
            }) {
                Text("Next Phase")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
