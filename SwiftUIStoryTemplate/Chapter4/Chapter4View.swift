import SwiftUI

struct Chapter4View: View {
    var body: some View {
        VStack {
            Text("Chapter 4")
                .font(.largeTitle)
                .padding()

            Image(systemName: "book.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            Text("The end of the story.")
                .padding()
        }
    }
}

#Preview {
    Chapter4View()
}
