import SwiftUI

struct Chapter3View: View {
    var body: some View {
        VStack {
            Text("Chapter 3")
                .font(.largeTitle)
                .padding()

            Image(systemName: "book.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            Text("The story continues...")
                .padding()

            NavigationLink(destination: Chapter4View()) {
                Text("Next")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
        }
    }
}

#Preview {
    Chapter3View()
}
