import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.title) // Sets the font size to title
            .foregroundColor(.blue) // Sets text color to blue
            .padding() // Adds default padding
            .background(Color.yellow) // Sets yellow background
            .cornerRadius(10) // Rounds corners with radius of 10
            .shadow(color: .gray, radius: 2, x: 1, y: 1) // Adds a gray shadow
            .opacity(0.8) // Sets opacity to 80%
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
