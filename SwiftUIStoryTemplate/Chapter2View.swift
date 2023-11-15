import SwiftUI

struct Chapter2View: View {
    var personName = ""
    var body: some View {
        VStack {
            Text("Chapter 2")
                .font(.largeTitle)
                .padding()

            Image(systemName: "book.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding()

            Text("In the next chapter...")
                .padding()

            NavigationLink(destination: Chapter3View()) {
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
    Chapter2View()
}
