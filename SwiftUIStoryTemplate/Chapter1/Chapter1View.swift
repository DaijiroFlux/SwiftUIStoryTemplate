import SwiftUI

struct Chapter1View: View {
    var body: some View {
        VStack {
            Text("Chapter 1")
                .font(.title)
                .padding()
            
            Image(systemName: "1.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("Once upon a time in a faraway kingdom, there lived a brave knight named Sir Arthur.")
                .padding()
            
            NavigationLink(destination: Chapter2View()) {
                Text("Next Chapter")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding()
            }
            .padding()
        }
    }
}
#Preview {
    Chapter1View()
}
